<?php

/**
 * Extracts text from an XLS format Microsoft Excel document.  Uses the xls2csv
 * command-line utility to do so.  This utility is part of the catdoc suite of
 * command-line utilities, which can be downloaded at:
 *
 * {@link http://wagner.pp.ru/~vitus/software/catdoc/}
 *
 * The path to the xls2csv binary will be detected automatically if it lives at
 * /usr/bin/xls2csv or /usr/local/bin/xls2csv.  If your xls2csv binary is in a 
 * non-standard place, you can set it in your _ss_environment.php file like so:
 *
 * <code>
 * define('XLS2CSV_BINARY_LOCATION', '/home/username/bin/xls2csv');
 * </code>
 *
 * Or, if using _config.php, you can also set it directly on the class:
 *
 * <code>
 * CatdocXlsExtractor::$binary_location = '/home/username/bin/xls2csv';
 * </code>
 *
 * @package lucene-silverstripe-module
 * @author Darren Inwood <darren.inwood@chrometoaster.com>
 */
class CatdocXlsExtractor extends ZendSearchLuceneTextExtractor {

    /**
     * The extensions that can be handled by this text extractor.
     * @static
     */
    public static $extensions = array(
        'xls'
    );

    /**
     * Holds the location of the xls2csv binary.  Should be a full filesystem 
     * path.
     * @static
     */
    public static $binary_location; 
    
    /**
     * Returns a string containing the text in the given Microsoft Excel XLS
     * document.
     *
     * @param   String  $filename   Full filesystem path to the file to process.
     * @return  String  Text extracted from the file.
     */
    public static function extract($filename) {
        if ( ! file_exists($filename) ) return '';
        $binary = self::get_binary_path();
        if ( !$binary ) return '';
        $command = escapeshellarg(realpath($binary)).' -q0 '.escapeshellarg(realpath($filename));
        if( strtoupper(substr(PHP_OS, 0,3)) == 'WIN' ) {
            // PHP has a weird bug where you can't escape the command and 
            // arguments, so we pass thru cmd
            $command = 'cmd /c " '.$command.' "'; 
        }
        return shell_exec($command);
    }


    /**
     * Try to detect where the xls2csv binary has been installed.
     *
     * @access private
     * @return  String|Boolean  Returns the path to the xls2csv binary, or 
     *                          boolean false if it cannot be found.
     */
    protected static function get_binary_path() {
        if ( self::$binary_location ) return self::$binary_location;
        if ( defined('XLS2CSV_BINARY_LOCATION') ) {
            self::$binary_location = XLS2CSV_BINARY_LOCATION;
        } else if ( file_exists('/usr/bin/xls2csv') ) {
            self::$binary_location = '/usr/bin/xls2csv';
        } else if ( file_exists('/usr/local/bin/xls2csv') ) {
            self::$binary_location = '/usr/local/bin/xls2csv';
        }
        return self::$binary_location;        
    }


}



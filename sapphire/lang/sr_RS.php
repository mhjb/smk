<?php

/**
 * Serbian (Serbia) language pack
 * @package sapphire
 * @subpackage i18n
 */

i18n::include_locale_file('sapphire', 'en_US');

global $lang;

if(array_key_exists('sr_RS', $lang) && is_array($lang['sr_RS'])) {
	$lang['sr_RS'] = array_merge($lang['en_US'], $lang['sr_RS']);
} else {
	$lang['sr_RS'] = $lang['en_US'];
}

$lang['sr_RS']['AdvancedSearchForm']['FROM'] = 'Од';
$lang['sr_RS']['AdvancedSearchForm']['GO'] = 'Иди';
$lang['sr_RS']['AdvancedSearchForm']['LASTUPDATED'] = 'Датуму ажурирања';
$lang['sr_RS']['AdvancedSearchForm']['PAGETITLE'] = 'Наслову стране';
$lang['sr_RS']['AdvancedSearchForm']['RELEVANCE'] = 'Релевантности';
$lang['sr_RS']['AdvancedSearchForm']['SEARCHBY'] = 'ТРАЖИ ПО';
$lang['sr_RS']['AdvancedSearchForm']['SORTBY'] = 'СОРТИРАЈ РЕЗУЛТАТЕ ПО';
$lang['sr_RS']['AdvancedSearchForm']['TO'] = 'До';
$lang['sr_RS']['AdvancedSearchForm']['WITHOUT'] = 'без речи';
$lang['sr_RS']['BasicAuth']['ENTERINFO'] = 'Унесите корисничко име и лозинку.';
$lang['sr_RS']['BasicAuth']['ERRORNOTADMIN'] = 'Овај корисник није администратор.';
$lang['sr_RS']['BasicAuth']['ERRORNOTREC'] = 'То корисничко име / лозинка није препознато';
$lang['sr_RS']['BBCodeParser']['ALIGNEMENT'] = 'Поравнање';
$lang['sr_RS']['BBCodeParser']['ALIGNEMENTEXAMPLE'] = 'поравнат уз десну страну';
$lang['sr_RS']['BBCodeParser']['BOLD'] = 'Подебљан текст';
$lang['sr_RS']['BBCodeParser']['BOLDEXAMPLE'] = 'Подебљано';
$lang['sr_RS']['BBCodeParser']['COLORED'] = 'Обојен текст';
$lang['sr_RS']['BBCodeParser']['COLOREDEXAMPLE'] = 'плави текст';
$lang['sr_RS']['BBCodeParser']['EMAILLINK'] = 'Веза е-поште';
$lang['sr_RS']['BBCodeParser']['EMAILLINKDESCRIPTION'] = 'Направите линк до адресе е-поште';
$lang['sr_RS']['BBCodeParser']['IMAGE'] = 'Слика';
$lang['sr_RS']['BBCodeParser']['IMAGEDESCRIPTION'] = 'Прикажи слику у мојој поруци';
$lang['sr_RS']['BBCodeParser']['ITALIC'] = 'Искошен текст';
$lang['sr_RS']['BBCodeParser']['ITALICEXAMPLE'] = 'Искошено';
$lang['sr_RS']['BBCodeParser']['LINKDESCRIPTION'] = 'Линк до другог вебсајта или URL';
$lang['sr_RS']['BBCodeParser']['STRUCK'] = 'Прецртан текст';
$lang['sr_RS']['BBCodeParser']['STRUCKEXAMPLE'] = 'Прецртано';
$lang['sr_RS']['BBCodeParser']['UNDERLINE'] = 'Подвучен текст';
$lang['sr_RS']['BBCodeParser']['UNDERLINEEXAMPLE'] = 'Подвучено';
$lang['sr_RS']['BBCodeParser']['UNORDERED'] = 'Неуређена листа';
$lang['sr_RS']['BBCodeParser']['UNORDEREDDESCRIPTION'] = 'Неуређена листа';
$lang['sr_RS']['BBCodeParser']['UNORDEREDEXAMPLE1'] = 'неуређена ставка 1';
$lang['sr_RS']['ChangePasswordEmail.ss']['CHANGEPASSWORDTEXT1'] = 'Променили сте своју лозинку за ';
$lang['sr_RS']['ChangePasswordEmail.ss']['CHANGEPASSWORDTEXT2'] = 'Сада можете да користите следеће податке за пријављивање:';
$lang['sr_RS']['ChangePasswordEmail.ss']['HELLO'] = 'Здраво';
$lang['sr_RS']['ComplexTableField.ss']['ADDITEM'] = 'Додај ';
$lang['sr_RS']['ComplexTableField.ss']['NOITEMSFOUND'] = 'Нема пронађених ставки';
$lang['sr_RS']['ComplexTableField.ss']['SORTASC'] = 'Сортирај у растућем поретку';
$lang['sr_RS']['ComplexTableField.ss']['SORTDESC'] = 'Сортирају у опадајућем поретку';
$lang['sr_RS']['ComplexTableField_popup.ss']['NEXT'] = 'Следеће';
$lang['sr_RS']['ComplexTableField_popup.ss']['PREVIOUS'] = 'Претходно';
$lang['sr_RS']['CompositeDateField']['DAY'] = 'Дан';
$lang['sr_RS']['CompositeDateField']['DAYJS'] = 'дан';
$lang['sr_RS']['CompositeDateField']['MONTH'] = 'Месец';
$lang['sr_RS']['CompositeDateField']['MONTHJS'] = 'месец';
$lang['sr_RS']['CompositeDateField']['YEARJS'] = 'година';
$lang['sr_RS']['ConfirmedFormAction']['CONFIRMATION'] = 'Da li si siguran?';
$lang['sr_RS']['ConfirmedPasswordField']['ATLEAST'] = 'Лозинка мора да има најмање %s знакова.';
$lang['sr_RS']['ConfirmedPasswordField']['HAVETOMATCH'] = 'Лозинке морају да се поклапају.';
$lang['sr_RS']['ConfirmedPasswordField']['LEASTONE'] = 'Лозинке морају да имају најмање једну цифру и један алфанумерички знак.';
$lang['sr_RS']['ConfirmedPasswordField']['MAXIMUM'] = 'Лозинка може да има највише %s знакова.';
$lang['sr_RS']['ConfirmedPasswordField']['NOEMPTY'] = 'Лозинке не могу да буду празне.';
$lang['sr_RS']['ConfirmedPasswordField']['SHOWONCLICKTITLE'] = 'Promeni Lozinku';
$lang['sr_RS']['ContentController']['DRAFT_SITE_ACCESS_RESTRICTION'] = 'Морате да се пријавите својом лозинком на CMS да бисте приступили нацртима или архивираном садржају. <a href="%s">Кликните овде да бисте се вратили на завршен сајт.</a>';
$lang['sr_RS']['Controller']['FILE'] = 'Датотека';
$lang['sr_RS']['Controller']['IMAGE'] = 'Слика';
$lang['sr_RS']['CreditCardField']['FIRST'] = 'први';
$lang['sr_RS']['CreditCardField']['FOURTH'] = 'четврти';
$lang['sr_RS']['CreditCardField']['SECOND'] = 'други';
$lang['sr_RS']['CreditCardField']['THIRD'] = 'трећи';
$lang['sr_RS']['CreditCardField']['VALIDATIONJS1'] = 'Проверите да ли сте унели';
$lang['sr_RS']['CreditCardField']['VALIDATIONJS2'] = 'исправан број кредитне картице.';
$lang['sr_RS']['CurrencyField']['CURRENCYSYMBOL'] = 'дин.';
$lang['sr_RS']['CurrencyField']['VALIDATIONJS'] = 'Унесите исправну валуту.';
$lang['sr_RS']['Date']['DAY'] = 'дан';
$lang['sr_RS']['Date']['DAYS'] = 'дана';
$lang['sr_RS']['Date']['HOUR'] = 'сат';
$lang['sr_RS']['Date']['HOURS'] = 'сати';
$lang['sr_RS']['Date']['MIN'] = 'минут';
$lang['sr_RS']['Date']['MINS'] = 'минута';
$lang['sr_RS']['Date']['MONTH'] = 'месец';
$lang['sr_RS']['Date']['MONTHS'] = 'месеци';
$lang['sr_RS']['Date']['SEC'] = 'секунда';
$lang['sr_RS']['Date']['SECS'] = 'секунди';
$lang['sr_RS']['Date']['YEAR'] = 'година';
$lang['sr_RS']['Date']['YEARS'] = 'година';
$lang['sr_RS']['DateField']['TODAY'] = 'данас';
$lang['sr_RS']['DateField']['VALIDATIONJS'] = 'Унесите исправан формат датума (ДД/ММ/ГГГГ).';
$lang['sr_RS']['DateField']['VALIDDATEFORMAT'] = 'Унесите исправан формат датума (ДД//ММ/ГГГГ)';
$lang['sr_RS']['DMYDateField']['VALIDDATEFORMAT'] = 'Унесите исправан формат времена (ДД-ММ-ГГГГ).';
$lang['sr_RS']['DropdownField']['CHOOSE'] = '(изаберите)';
$lang['sr_RS']['EmailField']['VALIDATION'] = 'Унесите адресу е-поште.';
$lang['sr_RS']['EmailField']['VALIDATIONJS'] = 'Унесите имејл адресу.';
$lang['sr_RS']['ErrorPage']['400'] = '400 - Лош захтев';
$lang['sr_RS']['ErrorPage']['403'] = '403 - Забрањено';
$lang['sr_RS']['ErrorPage']['404'] = '404 - Није пронађено';
$lang['sr_RS']['ErrorPage']['405'] = '405 - Метода није дозвољена';
$lang['sr_RS']['ErrorPage']['406'] = '406 - није прихватљиво';
$lang['sr_RS']['ErrorPage']['500'] = '500 - Интерна грешка у серверу';
$lang['sr_RS']['ErrorPage']['501'] = '501 - Није имплементирано';
$lang['sr_RS']['ErrorPage']['503'] = '503 - Сервис није доступан';
$lang['sr_RS']['ErrorPage']['505'] = '505 - HTTP верзија није подржана';
$lang['sr_RS']['ErrorPage']['CODE'] = 'Код грешке';
$lang['sr_RS']['ErrorPage']['DEFAULTERRORPAGETITLE'] = 'Страница није пронађена';
$lang['sr_RS']['ErrorPage']['SINGULARNAME'] = 'Greška Stranice';
$lang['sr_RS']['File']['PLURALNAME'] = 'Fajlovi';
$lang['sr_RS']['File']['SINGULARNAME'] = 'Fajl';
$lang['sr_RS']['File']['TOOLARGE'] = 'Velicina fajl-a je prevelika, maksimum dozvoljena velicina je %s';
$lang['sr_RS']['Folder']['DELETEUNUSEDTHUMBNAILS'] = 'Обриши некоришћене умањене приказе';
$lang['sr_RS']['Folder']['DELSELECTED'] = 'Обриши изабране датотеке';
$lang['sr_RS']['Folder']['DETAILSTAB'] = 'Детаљи';
$lang['sr_RS']['Folder']['FILENAME'] = 'Име датотеке';
$lang['sr_RS']['Folder']['FILESTAB'] = 'Датотеке';
$lang['sr_RS']['Folder']['LASTEDITED'] = 'З';
$lang['sr_RS']['Folder']['PLURALNAME'] = 'Fajlovi';
$lang['sr_RS']['Folder']['SINGULARNAME'] = 'Fajl';
$lang['sr_RS']['Folder']['TITLE'] = 'Наслов';
$lang['sr_RS']['Folder']['TYPE'] = 'Тип';
$lang['sr_RS']['Folder']['UPLOADTAB'] = 'Достави';
$lang['sr_RS']['Folder']['URL'] = 'URL';
$lang['sr_RS']['ForgotPasswordEmail.ss']['HELLO'] = 'Здраво';
$lang['sr_RS']['Form']['DATENOTSET'] = '(датум није постављен)';
$lang['sr_RS']['Form']['FIELDISREQUIRED'] = '%s је захтевано';
$lang['sr_RS']['Form']['LANGAOTHER'] = 'Остали језици';
$lang['sr_RS']['Form']['LANGAVAIL'] = 'Доступни језици';
$lang['sr_RS']['Form']['NOTSET'] = '(није постављено)';
$lang['sr_RS']['Form']['VALIDATIONALLDATEVALUES'] = 'Проверите да ли сте поставили све вредности датума';
$lang['sr_RS']['Form']['VALIDATIONBANKACC'] = 'Унесите исправни број банке';
$lang['sr_RS']['Form']['VALIDATIONCREDITNUMBER'] = 'Проверите да ли сте исправно унели %s број кредитне картице.';
$lang['sr_RS']['Form']['VALIDATIONFAILED'] = 'Провера није успела';
$lang['sr_RS']['Form']['VALIDATIONNOTUNIQUE'] = 'Унета вредност није јединствена';
$lang['sr_RS']['Form']['VALIDATIONPASSWORDSDONTMATCH'] = 'Лозинке се не поклапају';
$lang['sr_RS']['Form']['VALIDATIONPASSWORDSNOTEMPTY'] = 'Поља за лозинке не смеју да буду празна';
$lang['sr_RS']['Form']['VALIDATIONSTRONGPASSWORD'] = 'Лозинке морају да садрже најмање једну цифру и најмање један алфанумерички знак.';
$lang['sr_RS']['Form']['VALIDCURRENCY'] = 'Унесите исправну валуту.';
$lang['sr_RS']['FormField']['NONE'] = 'без';
$lang['sr_RS']['Group']['Code'] = 'Grupni Kod';
$lang['sr_RS']['Group']['has_many_Permissions'] = 'Ovlašcenja';
$lang['sr_RS']['Group']['Locked'] = 'Zakljucano?';
$lang['sr_RS']['Group']['many_many_Members'] = 'članovi';
$lang['sr_RS']['Group']['PLURALNAME'] = 'Grupe';
$lang['sr_RS']['Group']['SINGULARNAME'] = 'Grupa';
$lang['sr_RS']['GSTNumberField']['VALIDATION'] = 'Унсите исправан GST број.';
$lang['sr_RS']['HtmlEditorField']['ALTTEXT'] = 'Опис';
$lang['sr_RS']['HtmlEditorField']['ANCHOR'] = 'Уметни/измени сидро';
$lang['sr_RS']['HtmlEditorField']['BULLETLIST'] = 'Набрајање';
$lang['sr_RS']['HtmlEditorField']['BUTTONALIGNCENTER'] = 'Поравнај по средини';
$lang['sr_RS']['HtmlEditorField']['BUTTONALIGNJUSTIFY'] = 'Обострано поравњање';
$lang['sr_RS']['HtmlEditorField']['BUTTONALIGNLEFT'] = 'Поравнај лево';
$lang['sr_RS']['HtmlEditorField']['BUTTONALIGNRIGHT'] = 'Поравнај десно';
$lang['sr_RS']['HtmlEditorField']['BUTTONBOLD'] = 'Подебљано (Ctrl+B)';
$lang['sr_RS']['HtmlEditorField']['BUTTONINSERTFLASH'] = 'Уметни флеш датотеку';
$lang['sr_RS']['HtmlEditorField']['BUTTONINSERTIMAGE'] = 'Уметни слику';
$lang['sr_RS']['HtmlEditorField']['BUTTONINSERTLINK'] = 'Уметни линк';
$lang['sr_RS']['HtmlEditorField']['BUTTONITALIC'] = 'Искошено (Ctrl+I)';
$lang['sr_RS']['HtmlEditorField']['BUTTONREMOVELINK'] = 'Уклони линк';
$lang['sr_RS']['HtmlEditorField']['BUTTONSTRIKE'] = 'прецртано';
$lang['sr_RS']['HtmlEditorField']['BUTTONUNDERLINE'] = 'Подвучено (Ctrl+U)';
$lang['sr_RS']['HtmlEditorField']['CHARMAP'] = 'Уметни симбол';
$lang['sr_RS']['HtmlEditorField']['CLOSE'] = 'затвори';
$lang['sr_RS']['HtmlEditorField']['COPY'] = 'Копирај (Ctrl+C)';
$lang['sr_RS']['HtmlEditorField']['CREATEFOLDER'] = 'направи фасциклу';
$lang['sr_RS']['HtmlEditorField']['CSSCLASS'] = 'Поравнање / стил';
$lang['sr_RS']['HtmlEditorField']['CSSCLASSCENTER'] = 'Центрирано, само за себе.';
$lang['sr_RS']['HtmlEditorField']['CSSCLASSLEFT'] = 'Са леве стране, са текстом преломљеним около.';
$lang['sr_RS']['HtmlEditorField']['CSSCLASSRIGHT'] = 'Са десне стране, са текстом преломљеним около.';
$lang['sr_RS']['HtmlEditorField']['CUT'] = 'Исеци (Ctrl+X)';
$lang['sr_RS']['HtmlEditorField']['DELETECOL'] = 'Избриши колону';
$lang['sr_RS']['HtmlEditorField']['DELETEROW'] = 'Избриши ред';
$lang['sr_RS']['HtmlEditorField']['EDITCODE'] = 'Измени HTML код';
$lang['sr_RS']['HtmlEditorField']['EMAIL'] = 'Адреса е-поште';
$lang['sr_RS']['HtmlEditorField']['FILE'] = 'Датотека';
$lang['sr_RS']['HtmlEditorField']['FLASH'] = 'Флеш';
$lang['sr_RS']['HtmlEditorField']['FOLDER'] = 'Фасцикла';
$lang['sr_RS']['HtmlEditorField']['FOLDERCANCEL'] = 'откажи';
$lang['sr_RS']['HtmlEditorField']['FORMATADDR'] = 'Адреса';
$lang['sr_RS']['HtmlEditorField']['FORMATH1'] = 'Наслов 1';
$lang['sr_RS']['HtmlEditorField']['FORMATH2'] = 'Наслов 2';
$lang['sr_RS']['HtmlEditorField']['FORMATH3'] = 'Наслов 3';
$lang['sr_RS']['HtmlEditorField']['FORMATH4'] = 'Наслов 4';
$lang['sr_RS']['HtmlEditorField']['FORMATH5'] = 'Наслов 5';
$lang['sr_RS']['HtmlEditorField']['FORMATH6'] = 'Наслов 6';
$lang['sr_RS']['HtmlEditorField']['FORMATP'] = 'Параграф';
$lang['sr_RS']['HtmlEditorField']['FORMATPRE'] = 'Претходно форматирано';
$lang['sr_RS']['HtmlEditorField']['HR'] = 'Уметни хоризонталну линију';
$lang['sr_RS']['HtmlEditorField']['IMAGE'] = 'Слика';
$lang['sr_RS']['HtmlEditorField']['IMAGEDIMENSIONS'] = 'Димензије';
$lang['sr_RS']['HtmlEditorField']['IMAGEHEIGHTPX'] = 'Висина';
$lang['sr_RS']['HtmlEditorField']['IMAGEWIDTHPX'] = 'Ширина';
$lang['sr_RS']['HtmlEditorField']['INDENT'] = 'Повећај увученост';
$lang['sr_RS']['HtmlEditorField']['INSERTCOLAFTER'] = 'Уметни колону после';
$lang['sr_RS']['HtmlEditorField']['INSERTCOLBEF'] = 'Уметни колону пре';
$lang['sr_RS']['HtmlEditorField']['INSERTROWAFTER'] = 'Уметни ред после';
$lang['sr_RS']['HtmlEditorField']['INSERTROWBEF'] = 'Уметни ред пре';
$lang['sr_RS']['HtmlEditorField']['INSERTTABLE'] = 'Уметни табелу';
$lang['sr_RS']['HtmlEditorField']['LINK'] = 'Линк';
$lang['sr_RS']['HtmlEditorField']['LINKDESCR'] = 'Опис линка';
$lang['sr_RS']['HtmlEditorField']['LINKEMAIL'] = 'Имејл адреса';
$lang['sr_RS']['HtmlEditorField']['LINKEXTERNAL'] = 'други сајт';
$lang['sr_RS']['HtmlEditorField']['LINKFILE'] = 'Преузми датотеку';
$lang['sr_RS']['HtmlEditorField']['LINKINTERNAL'] = 'страну на сајту';
$lang['sr_RS']['HtmlEditorField']['LINKOPENNEWWIN'] = 'Отворити линк у  новом прозору?';
$lang['sr_RS']['HtmlEditorField']['LINKTO'] = 'Повежи на';
$lang['sr_RS']['HtmlEditorField']['OK'] = 'у реду';
$lang['sr_RS']['HtmlEditorField']['OL'] = 'Редно набрајање';
$lang['sr_RS']['HtmlEditorField']['OUTDENT'] = 'Смањи увученост';
$lang['sr_RS']['HtmlEditorField']['PAGE'] = 'Страна';
$lang['sr_RS']['HtmlEditorField']['PASTE'] = 'Налепи (Ctrl+V)';
$lang['sr_RS']['HtmlEditorField']['PASTETEXT'] = 'Налепи обичан текст';
$lang['sr_RS']['HtmlEditorField']['PASTEWORD'] = 'Налепи из Ворда';
$lang['sr_RS']['HtmlEditorField']['REDO'] = 'Понови (Ctrl+Z)';
$lang['sr_RS']['HtmlEditorField']['SELECTALL'] = 'Изабери све (Ctrl+A)';
$lang['sr_RS']['HtmlEditorField']['UNDO'] = 'Опозови (Ctrl+Z)';
$lang['sr_RS']['HtmlEditorField']['UNLINK'] = 'Уклони линк';
$lang['sr_RS']['HtmlEditorField']['UPLOAD'] = 'достави';
$lang['sr_RS']['HtmlEditorField']['URL'] = 'URL';
$lang['sr_RS']['HtmlEditorField']['VISUALAID'] = 'Прикажи/сакриј водиље';
$lang['sr_RS']['Image']['PLURALNAME'] = 'Fajlovi';
$lang['sr_RS']['Image']['SINGULARNAME'] = 'Fajl';
$lang['sr_RS']['ImageField']['NOTEADDIMAGES'] = 'Моћи ћете да додајете слике када будете сачували по први пут.';
$lang['sr_RS']['ImageUplaoder']['ONEFROMFILESTORE'] = 'Са једном из складишта датотека';
$lang['sr_RS']['ImageUploader']['ATTACH'] = 'Прикачи %s';
$lang['sr_RS']['ImageUploader']['DELETE'] = 'Избриши %s';
$lang['sr_RS']['ImageUploader']['FROMCOMPUTER'] = 'Са вашег рачунара';
$lang['sr_RS']['ImageUploader']['FROMFILESTORE'] = 'Из складишта датотека';
$lang['sr_RS']['ImageUploader']['ONEFROMCOMPUTER'] = 'Са оном на вашем рачунару';
$lang['sr_RS']['ImageUploader']['REALLYDELETE'] = 'Да ли заиста желите да уклоните %s?';
$lang['sr_RS']['ImageUploader']['REPLACE'] = 'Замени %s';
$lang['sr_RS']['Image_iframe.ss']['TITLE'] = 'Iframe за достављање слика';
$lang['sr_RS']['LoginAttempt']['PLURALNAME'] = 'Login Pokušaja';
$lang['sr_RS']['LoginAttempt']['SINGULARNAME'] = 'Login Pokušaj';
$lang['sr_RS']['Member']['ADDRESS'] = 'Адреса';
$lang['sr_RS']['Member']['belongs_many_many_Groups'] = 'Grupe';
$lang['sr_RS']['Member']['BUTTONCHANGEPASSWORD'] = 'Промени лозинку';
$lang['sr_RS']['Member']['BUTTONLOGIN'] = 'Пријави се';
$lang['sr_RS']['Member']['BUTTONLOGINOTHER'] = 'Пријавите се као неко други';
$lang['sr_RS']['Member']['BUTTONLOSTPASSWORD'] = 'Заборавио сам лозинку';
$lang['sr_RS']['Member']['CONFIRMNEWPASSWORD'] = 'Потврдите нову лозинку';
$lang['sr_RS']['Member']['CONFIRMPASSWORD'] = 'Потврдите лозинку';
$lang['sr_RS']['Member']['CONTACTINFO'] = 'Информације о контакту';
$lang['sr_RS']['Member']['db_LockedOutUntil'] = 'Zaključan do';
$lang['sr_RS']['Member']['db_PasswordExpiry'] = 'Datum Isteka Lozinke';
$lang['sr_RS']['Member']['EMAIL'] = 'Е-пошта';
$lang['sr_RS']['Member']['EMAILSIGNUPINTRO1'] = 'Хвала вам што сте се регистровали. Ваши детаљи се налазе испод.';
$lang['sr_RS']['Member']['EMAILSIGNUPINTRO2'] = 'Можете да се пријавите на сајт користећи податке приказане испод';
$lang['sr_RS']['Member']['EMAILSIGNUPSUBJECT'] = 'Хвала за регистровање';
$lang['sr_RS']['Member']['ERRORNEWPASSWORD'] = 'Нова лозинка коју сте унели се не поклапа. Покушајте поново.';
$lang['sr_RS']['Member']['ERRORPASSWORDNOTMATCH'] = 'Ваша тренутна лозинка се не поклапа. Покушајте поново.';
$lang['sr_RS']['Member']['ERRORWRONGCRED'] = 'Ово не изгледа као исправна адреса е-поште или лозинка.';
$lang['sr_RS']['Member']['FIRSTNAME'] = 'Име';
$lang['sr_RS']['Member']['GREETING'] = 'Добродошли';
$lang['sr_RS']['Member']['INTERFACELANG'] = 'Језик интерфејса';
$lang['sr_RS']['Member']['LOGGEDINAS'] = 'Пријављени сте као %s.';
$lang['sr_RS']['Member']['MOBILE'] = 'Мобилни телефон';
$lang['sr_RS']['Member']['NAME'] = 'Име';
$lang['sr_RS']['Member']['NEWPASSWORD'] = 'Нова лозинка';
$lang['sr_RS']['Member']['PASSWORD'] = 'Лозинка';
$lang['sr_RS']['Member']['PASSWORDCHANGED'] = 'Ваша лозинка је промењена а њена копија је послата на вашу адресу е-поште.';
$lang['sr_RS']['Member']['PERSONALDETAILS'] = 'Лични детаљи';
$lang['sr_RS']['Member']['PHONE'] = 'Телефон';
$lang['sr_RS']['Member']['PLURALNAME'] = 'članovi';
$lang['sr_RS']['Member']['REMEMBERME'] = 'Запамти ме за следећи пут';
$lang['sr_RS']['Member']['SINGULARNAME'] = 'član';
$lang['sr_RS']['Member']['SUBJECTPASSWORDCHANGED'] = 'Ваша лозинка је промењена';
$lang['sr_RS']['Member']['SUBJECTPASSWORDRESET'] = 'Линк за ресетовање ваше лозинке';
$lang['sr_RS']['Member']['SURNAME'] = 'Презиме';
$lang['sr_RS']['Member']['USERDETAILS'] = 'Детаљи корисника';
$lang['sr_RS']['Member']['VALIDATIONMEMBEREXISTS'] = 'Већ постоји члан са овом адресом е-поште';
$lang['sr_RS']['Member']['WELCOMEBACK'] = 'Добродошли, %s';
$lang['sr_RS']['Member']['YOUROLDPASSWORD'] = 'Ваша стара лозинка';
$lang['sr_RS']['MemberAuthenticator']['TITLE'] = 'Пошаљи лозинку';
$lang['sr_RS']['MemberPassword']['PLURALNAME'] = 'Lozinke člana';
$lang['sr_RS']['MemberPassword']['SINGULARNAME'] = 'Lozinka člana';
$lang['sr_RS']['NumericField']['VALIDATION'] = '\'%s\' није број. У ово поље могу да буду унесени само бројеви.';
$lang['sr_RS']['PhoneNumberField']['VALIDATION'] = 'Унесите исправан број телефона';
$lang['sr_RS']['RedirectorPage']['HASBEENSETUP'] = 'Страница за преусмеравање је постављена без параметра за преусмеравање';
$lang['sr_RS']['RedirectorPage']['HEADER'] = 'Ова страна ће преусмерити кориснике на другу страну';
$lang['sr_RS']['RedirectorPage']['OTHERURL'] = 'URL другог сајта';
$lang['sr_RS']['RedirectorPage']['REDIRECTTO'] = 'Преусмери на';
$lang['sr_RS']['RedirectorPage']['REDIRECTTOEXTERNAL'] = 'други сајт';
$lang['sr_RS']['RedirectorPage']['REDIRECTTOPAGE'] = 'страницу на вашем сајту';
$lang['sr_RS']['RedirectorPage']['YOURPAGE'] = 'Страница на вашем сајту';
$lang['sr_RS']['RelationComplexTableField.ss']['ADD'] = 'Додај';
$lang['sr_RS']['RelationComplexTableField.ss']['DELETE'] = 'обриши';
$lang['sr_RS']['RelationComplexTableField.ss']['EDIT'] = 'измени';
$lang['sr_RS']['RelationComplexTableField.ss']['NOTFOUND'] = 'Нема пронађених ставки';
$lang['sr_RS']['RelationComplexTableField.ss']['SHOW'] = 'прикажи';
$lang['sr_RS']['SearchForm']['SEARCH'] = 'Претрага';
$lang['sr_RS']['Security']['ALREADYLOGGEDIN'] = 'Немате дозволу за приступ овој страни. Уколико имате други налог којим можете да приступите овој страни, пријавите се.';
$lang['sr_RS']['Security']['BUTTONSEND'] = 'Пошаљи ми линк за ресетовање лозинке';
$lang['sr_RS']['Security']['CHANGEPASSWORDBELOW'] = 'Овде можете да промените своју лозинку.';
$lang['sr_RS']['Security']['CHANGEPASSWORDHEADER'] = 'Промени моју лозинку';
$lang['sr_RS']['Security']['EMAIL'] = 'Имејл:';
$lang['sr_RS']['Security']['ENTERNEWPASSWORD'] = 'Унесите нову лозинку.';
$lang['sr_RS']['Security']['ERRORPASSWORDPERMISSION'] = 'Морате да будете пријављени да бисте променили своју лозинку!';
$lang['sr_RS']['Security']['ID'] = 'ID:';
$lang['sr_RS']['Security']['IPADDRESSES'] = 'IP адресе';
$lang['sr_RS']['Security']['LOGGEDOUT'] = 'Одјављени сте. Уколико желите да се поново пријавите, унесите своје податке.';
$lang['sr_RS']['Security']['LOGIN'] = 'Пријављивање';
$lang['sr_RS']['Security']['LOSTPASSWORDHEADER'] = 'Изгубљена лозинка';
$lang['sr_RS']['Security']['NOTEPAGESECURED'] = 'Ова страна је обезбеђена. Унесите своје податке и ми ћемо вам послати садржај.';
$lang['sr_RS']['Security']['NOTERESETPASSWORD'] = 'Унесите своју адресу е-поште и ми ћемо вам послати линк помоћу којег можете да промените своју лозинку';
$lang['sr_RS']['Security']['PASSWORDSENTHEADER'] = 'Линк за ресетовање лозинке послат на \'%s\'';
$lang['sr_RS']['Security']['PASSWORDSENTTEXT'] = 'Хвала вам! Линк за промену лозинке је послат на \'%s\'.';
$lang['sr_RS']['SecurityAdmin']['CODE'] = 'Код';
$lang['sr_RS']['SimpleImageField']['NOUPLOAD'] = 'Ниједна слика није достављена';
$lang['sr_RS']['SiteTree']['ACCESSANYONE'] = 'Свако';
$lang['sr_RS']['SiteTree']['ACCESSHEADER'] = 'Ко може да види ову страну на мом сајту?';
$lang['sr_RS']['SiteTree']['ACCESSLOGGEDIN'] = 'Пријављени корисници';
$lang['sr_RS']['SiteTree']['ACCESSONLYTHESE'] = 'Само ови људи (изаберите са списка)';
$lang['sr_RS']['SiteTree']['ADDEDTODRAFT'] = 'Додато сајту са нацртима';
$lang['sr_RS']['SiteTree']['ALLOWCOMMENTS'] = 'Дозволити коментаре на овој страни?';
$lang['sr_RS']['SiteTree']['APPEARSVIRTUALPAGES'] = 'Овај садржај се такође приказује на виртуалним страницама у %s секција.';
$lang['sr_RS']['SiteTree']['BUTTONCANCELDRAFT'] = 'Откажи промене на нацрту';
$lang['sr_RS']['SiteTree']['BUTTONCANCELDRAFTDESC'] = 'Избришите свој нацрт и вратите се на тренутно објављену страну';
$lang['sr_RS']['SiteTree']['BUTTONSAVEPUBLISH'] = 'Сачувај и објави';
$lang['sr_RS']['SiteTree']['BUTTONUNPUBLISH'] = 'Повуци објављивање';
$lang['sr_RS']['SiteTree']['BUTTONUNPUBLISHDESC'] = 'Уклони ову страну са живог сајта';
$lang['sr_RS']['SiteTree']['CHANGETO'] = 'Промени у';
$lang['sr_RS']['SiteTree']['DEFAULTABOUTTITLE'] = 'О нама';
$lang['sr_RS']['SiteTree']['DEFAULTCONTACTTITLE'] = 'Контактирајте нас';
$lang['sr_RS']['SiteTree']['DEFAULTHOMETITLE'] = 'Почетна';
$lang['sr_RS']['SiteTree']['EDITANYONE'] = 'Свако ко може да се пријави на CMS';
$lang['sr_RS']['SiteTree']['EDITHEADER'] = 'Ко може да мења ову страницу у CMS-у?';
$lang['sr_RS']['SiteTree']['EDITONLYTHESE'] = 'Само ови људи (изаберите са списка)';
$lang['sr_RS']['SiteTree']['GROUP'] = 'Група';
$lang['sr_RS']['SiteTree']['HASBROKENLINKS'] = 'Ова страна има неважеће линкове.';
$lang['sr_RS']['SiteTree']['HOMEPAGEFORDOMAIN'] = 'Домен(и)';
$lang['sr_RS']['SiteTree']['HTMLEDITORTITLE'] = 'Садржај';
$lang['sr_RS']['SiteTree']['MENUTITLE'] = 'Натпис за навигацију';
$lang['sr_RS']['SiteTree']['METADESC'] = 'Опис';
$lang['sr_RS']['SiteTree']['METAEXTRA'] = 'Прилагођени мета тагови';
$lang['sr_RS']['SiteTree']['METAHEADER'] = 'Мета тагови за претраживаче';
$lang['sr_RS']['SiteTree']['METAKEYWORDS'] = 'Кључне речи';
$lang['sr_RS']['SiteTree']['METATITLE'] = 'Наслов';
$lang['sr_RS']['SiteTree']['MODIFIEDONDRAFT'] = 'Промењено на сајту са нацртима';
$lang['sr_RS']['SiteTree']['NOBACKLINKS'] = 'Ова страница није линкована ни са једне странице.';
$lang['sr_RS']['SiteTree']['NOTEUSEASHOMEPAGE'] = 'Користи ову страницу као \'почетну\' за следеће домене:
(одвојите домене зарезима)';
$lang['sr_RS']['SiteTree']['PAGESLINKING'] = 'Следеће странице показују на ову страницу:';
$lang['sr_RS']['SiteTree']['PAGETITLE'] = 'Име стране';
$lang['sr_RS']['SiteTree']['PAGETYPE'] = 'Тип стране';
$lang['sr_RS']['SiteTree']['REMOVEDFROMDRAFT'] = 'Уклоњено са сајта са нацртима';
$lang['sr_RS']['SiteTree']['SHOWINMENUS'] = 'Приказати у менијима?';
$lang['sr_RS']['SiteTree']['SHOWINSEARCH'] = 'Приказати у претрази?';
$lang['sr_RS']['SiteTree']['TABACCESS'] = 'Приступ';
$lang['sr_RS']['SiteTree']['TABBACKLINKS'] = 'Повратни линкови';
$lang['sr_RS']['SiteTree']['TABBEHAVIOUR'] = 'Понашање';
$lang['sr_RS']['SiteTree']['TABCONTENT'] = 'Садржај';
$lang['sr_RS']['SiteTree']['TABMAIN'] = 'Главно';
$lang['sr_RS']['SiteTree']['TABMETA'] = 'Мета подаци';
$lang['sr_RS']['SiteTree']['TABREPORTS'] = 'Извештаји';
$lang['sr_RS']['SiteTree']['TOPLEVEL'] = 'Садржај сајта (главни ниво)';
$lang['sr_RS']['SiteTree']['URL'] = 'URL';
$lang['sr_RS']['SiteTree']['VALIDATIONURLSEGMENT1'] = 'Друга страна користи тај URL. URL мора да буде јединствен за сваку страну';
$lang['sr_RS']['SiteTree']['VALIDATIONURLSEGMENT2'] = 'URL-ови могу да садрже само слова, цифре и цртице';
$lang['sr_RS']['TableField']['ISREQUIRED'] = 'У %s, \'%s\' је неопходно.';
$lang['sr_RS']['TableField.ss']['ADD'] = 'Додај нов ред';
$lang['sr_RS']['TableField.ss']['CSVEXPORT'] = 'Извези у CSV';
$lang['sr_RS']['TableListField']['CSVEXPORT'] = 'Извези у CSV';
$lang['sr_RS']['TableListField']['PRINT'] = 'Штампај';
$lang['sr_RS']['TableListField_PageControls.ss']['DISPLAYING'] = 'Приказујем';
$lang['sr_RS']['TableListField_PageControls.ss']['OF'] = 'од';
$lang['sr_RS']['TableListField_PageControls.ss']['TO'] = 'до';
$lang['sr_RS']['TableListField_PageControls.ss']['VIEWNEXT'] = 'Погледај следеће';
$lang['sr_RS']['TableListField_PageControls.ss']['VIEWPREVIOUS'] = 'Погледај претходно';
$lang['sr_RS']['ToggleCompositeField.ss']['HIDE'] = 'Сакриј';
$lang['sr_RS']['ToggleCompositeField.ss']['SHOW'] = 'Прикажи';
$lang['sr_RS']['ToggleField']['LESS'] = 'мање';
$lang['sr_RS']['ToggleField']['MORE'] = 'више';
$lang['sr_RS']['Translatable']['CREATE'] = 'Направи нов превод';
$lang['sr_RS']['Translatable']['CREATEBUTTON'] = 'Направи';
$lang['sr_RS']['Translatable']['EXISTING'] = 'Постојећи преводи:';
$lang['sr_RS']['Translatable']['NEWLANGUAGE'] = 'Нов језик';
$lang['sr_RS']['Translatable']['TRANSLATIONS'] = 'Преводи';
$lang['sr_RS']['TreeSelectorField']['CANCEL'] = 'откажи';
$lang['sr_RS']['TreeSelectorField']['SAVE'] = 'сачувај';
$lang['sr_RS']['TypeDropdown']['NONE'] = 'без';
$lang['sr_RS']['VirtualPage']['CHOOSE'] = 'Изаберите страну коју желите да повежете';
$lang['sr_RS']['VirtualPage']['EDITCONTENT'] = 'кликните овде да бисте променили садржај';
$lang['sr_RS']['VirtualPage']['HEADER'] = 'Ово је виртуална страна';

?>
CREATE TABLE `clients_ul` 
(
	`id_client` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `code_client`	INT,
    `name_company`	VARCHAR(512),
    `adress`	VARCHAR(512),
    `inn`	BIGINT,
    `schet`	BIGINT,
    `bik`	BIGINT,
    `fio_glav`	VARCHAR(512),
    `fio_persion`	VARCHAR(512),
    `phone`	VARCHAR(512),
    `e-mail`	VARCHAR(512),
    `pass`	VARCHAR(512)
);

CREATE TABLE `clients_fl` 
(
	`id_client` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `fio`	VARCHAR(512),
    `code_client`	INT,
    `pasport_dannie`	VARCHAR(512),
    `date_of_birth`	VARCHAR(512),
    `adress`	VARCHAR(512),
    `e-mail`	VARCHAR(512),
    `password`	VARCHAR(512)
);

CREATE TABLE `orders` 
(
	`id_order` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `order_number`	VARCHAR(512),
    `date_create`	VARCHAR(512),
    `client_code`	INT,
    `uslugi`	VARCHAR(512),
    `status`	VARCHAR(512),
    `date_close`	VARCHAR(512),
    `sotr_code`	INT,
    `time_good`	INT
);

CREATE TABLE `laborant_and_controlers` 
(
	`id_client` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `code_sotr`	INT,
    `dolznost`	VARCHAR(512),
    `fio`	VARCHAR(512),
    `login`	VARCHAR(512),
    `pass`	VARCHAR(512),
    `uslugi`	VARCHAR(512),
    `last_seen`	VARCHAR(512)
);

CREATE TABLE `history_uslugi` 
(
	`id_zakaz` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `usluga`	VARCHAR(512),
    `date`	VARCHAR(512),
    `code_sotr`	INT
);

CREATE TABLE `sotrydniki` 
(
	`id_sotrydnik` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `code_sotr`	INT,
    `dolznost`	VARCHAR(512),
    `fio`	VARCHAR(512),
    `login`	VARCHAR(512),
    `pass`	VARCHAR(512),
    `last_seen`	VARCHAR(512)
);

CREATE TABLE `uslugi` 
(
    `id_uslugi`	INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `naimenovanie_uslugi`	VARCHAR(512),
    `kod_uslugi`	VARCHAR(512),
    `srok_vypolnenia`	INT,
    `srednee_otklonenie`	DOUBLE,
    `stoimost`	INT,
    `stoimost_namepost`	INT
);

INSERT INTO `clients_ul` (`name_company`, `adress`, `inn`, `schet`, `bik`, `fio_glav`, `fio_persion`, `phone`, `e-mail`, `pass`, `code_client`) VALUES ('"ЗАО""Русская косметика"""', 'МО, Одинцово, Ворошилова ул, 153', '7927728472', '78123678892', '445334327', 'Харитонова Ева Адамовна', 'Кузнецов Александр Сергеевич', '16(7185)250-54-23556', 'dcoppit@mac.com', 'UL1234', '123');
INSERT INTO `clients_ul` (`name_company`, `adress`, `inn`, `schet`, `bik`, `fio_glav`, `fio_persion`, `phone`, `e-mail`, `pass`, `code_client`) VALUES ('ООО «Коконат»', 'МО, Чехов, Минская ул, 128', '7934728472', '78123678842', '445622227', 'Орлова Татьяна Мироновна', 'Демидов Дмитрий Глебович', '33(5855)767-28-30549', 'tezbo@mac.com', 'UL1235', '23');
INSERT INTO `clients_ul` (`name_company`, `adress`, `inn`, `schet`, `bik`, `fio_glav`, `fio_persion`, `phone`, `e-mail`, `pass`, `code_client`) VALUES ('Nicole laboratory', 'МО, Ногинск, Заводская ул, 34', '7927425472', '78122378892', '493993327', 'Дементьев Ярослав Георгиевич', 'Розанова Камила Максимовна', '2(63)151-61-70518', 'stecoop@yahoo.com', 'UL1236', '8739');
INSERT INTO `clients_ul` (`name_company`, `adress`, `inn`, `schet`, `bik`, `fio_glav`, `fio_persion`, `phone`, `e-mail`, `pass`, `code_client`) VALUES ('ООО «ВДС-Ступино»', 'МО, Ступино, Космонавтов ул, 54', '7922424472', '78899678892', '445982837', 'Седов Тимур Матвеевич', 'Сычева Надежда Артёмовна', '0(601)740-14-66478', 'kassiesa@aol.com', 'UL1237', '37728');
INSERT INTO `clients_ul` (`name_company`, `adress`, `inn`, `schet`, `bik`, `fio_glav`, `fio_persion`, `phone`, `e-mail`, `pass`, `code_client`) VALUES ('ПК «Парфюм Стиль»', 'МО, Королев, Партизана Германа ул, 67', '7955555572', '78123723992', '402000227', 'Иванова Анна Александровна', 'Пономарева Валерия Ивановна', '31(57)181-23-30334', 'bartlett@att.net', 'UL1238', '3432');
INSERT INTO `clients_ul` (`name_company`, `adress`, `inn`, `schet`, `bik`, `fio_glav`, `fio_persion`, `phone`, `e-mail`, `pass`, `code_client`) VALUES ('ООО «КоролевФарм»', 'МО, Королев, ДК Кирова, 28', '7922985472', '70989678892', '408288227', 'Молчанова Елизавета Руслановна', 'Козловская София Данииловна', '3(2113)599-96-85099', 'alias@sbcglobal.net', 'UL1239', '873');
INSERT INTO `clients_ul` (`name_company`, `adress`, `inn`, `schet`, `bik`, `fio_glav`, `fio_persion`, `phone`, `e-mail`, `pass`, `code_client`) VALUES ('ГК Коттон Клаб', 'МО, Одинцово, 9 Января, 298', '7929388332', '73626626892', '445639927', 'Софронов Фёдор Иванович', 'Зубкова Василиса Петровна', '73(5598)021-52-52563', 'research@sbcglobal.net', 'UL1240', '378');

INSERT INTO `sotrydniki` (`code_sotr`, `dolznost`, `fio`, `login`, `pass`, `last_seen`) VALUES ('101', 'Менеджер по работе с клиетами ', 'Иванов Иван Иванович', 'Ivanov@namecomp.ru', '2L6KZG', '15:05:2022 13:13:00');
INSERT INTO `sotrydniki` (`code_sotr`, `dolznost`, `fio`, `login`, `pass`, `last_seen`) VALUES ('102', 'Менеджер по работе с клиентами', 'Петров Петр Петрович', 'petrov@namecomp.ru', 'uzWC67', '15:05:2022 13:13:01');
INSERT INTO `sotrydniki` (`code_sotr`, `dolznost`, `fio`, `login`, `pass`, `last_seen`) VALUES ('103', 'Администратор', 'Федоров Федор Федорович', 'fedorov@namecomp.ru', '8ntwUp', '15:05:2022 13:13:02');
INSERT INTO `sotrydniki` (`code_sotr`, `dolznost`, `fio`, `login`, `pass`, `last_seen`) VALUES ('107', 'Начальник ОТК', 'Хохлов Владимир Мэлсович', 'hohlov@namecomp.ru', 'LdNyos', '15:05:2022 13:13:06');
INSERT INTO `sotrydniki` (`code_sotr`, `dolznost`, `fio`, `login`, `pass`, `last_seen`) VALUES ('108', 'Администратор', 'Стрелков Мстислав Георгьевич', 'strelkov@namecomp.ru', 'gynQMT', '15:05:2022 13:13:07');

INSERT INTO `history_uslugi` (`usluga`, `date`, `code_sotr`) VALUES ('98, 45, 89, 353, 336, 34', '16/04/22', '110');
INSERT INTO `history_uslugi` (`usluga`, `date`, `code_sotr`) VALUES ('34, 31, 353, 338', '22/04/22', '104');
INSERT INTO `history_uslugi` (`usluga`, `date`, `code_sotr`) VALUES ('98, 45, 89, 353, 336, 36', '26/04/22', '110');
INSERT INTO `history_uslugi` (`usluga`, `date`, `code_sotr`) VALUES ('34, 31, 353, 340', '02/05/22', '104');
INSERT INTO `history_uslugi` (`usluga`, `date`, `code_sotr`) VALUES ('92, 45, 57, 93', '09/05/22', '106');
INSERT INTO `history_uslugi` (`usluga`, `date`, `code_sotr`) VALUES ('92, 45, 57, 95', '19/05/22', '106');
INSERT INTO `history_uslugi` (`usluga`, `date`, `code_sotr`) VALUES ('34, 31, 353, 344', '22/05/22', '104');
INSERT INTO `history_uslugi` (`usluga`, `date`, `code_sotr`) VALUES ('98, 45, 89, 99, 132', '28/05/22', '105');

INSERT INTO `laborant_and_controlers` (`code_sotr`, `dolznost`, `fio`, `login`, `pass`, `uslugi`, `last_seen`) VALUES ('109', 'Контролер ОТК', 'Беляева Лилия Наумовна', 'belyeva@@namecomp.ru', 'AtnDjr', '92, 45, 57, 88, 44', '15:05:2022 13:13:08');
INSERT INTO `laborant_and_controlers` (`code_sotr`, `dolznost`, `fio`, `login`, `pass`, `uslugi`, `last_seen`) VALUES ('110', 'Контролер ОТК', 'Смирнова Ульяна Гордеевна', 'smirnova@@namecomp.ru', 'JlFRCZ', '98, 45, 89, 353, 336, 34', '15:05:2022 13:13:09');
INSERT INTO `laborant_and_controlers` (`code_sotr`, `dolznost`, `fio`, `login`, `pass`, `uslugi`, `last_seen`) VALUES ('104', 'Лаборант', 'Миронов Вениамин Куприянович', 'mironov@namecomp.ru', 'YOyhfR', '34, 31, 353, 336', '15:05:2022 13:13:03');
INSERT INTO `laborant_and_controlers` (`code_sotr`, `dolznost`, `fio`, `login`, `pass`, `uslugi`, `last_seen`) VALUES ('105', 'Лаборант', 'Ширяев Ермолай Вениаминович', 'shiryev@namecomp.ru', 'RSbvHv', '98, 45, 89, 99, 123', '15:05:2022 13:13:04');
INSERT INTO `laborant_and_controlers` (`code_sotr`, `dolznost`, `fio`, `login`, `pass`, `uslugi`, `last_seen`) VALUES ('106', 'Лаборант', 'Игнатов Кассиан Васильевич', 'ignatov@namecomp.ru', 'rwVDh9', '92, 45, 57, 88', '15:05:2022 13:13:05');

INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('45462527/12.03.2022', '3/12/22', '45462527', '34, 31, 353, 336', 'Новая', '', '104', '78');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('45462528/13.03.2022', '3/13/22', '45462528', '98, 45, 89, 99, 123', 'На исследовании', '', '105', '16');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('45462529/14.03.2022', '3/14/22', '45462529', '92, 45, 57, 88', 'На исследовании', '', '106', '28');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('45462530/15.03.2022', '3/15/22', '45462530', '92, 45, 57, 88, 44', 'Новая', '', '109', '20');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('45462531/16.03.2022', '3/16/22', '45462531', '98, 45, 89, 353, 336, 34', 'Закрыта', '4/16/22', '110', '72');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('45462532/17.03.2022', '3/17/22', '45462532', '34, 31, 353, 337', 'Новая', '', '104', '8');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('45462533/18.03.2022', '3/18/22', '45462533', '98, 45, 89, 99, 124', 'Новая', '', '105', '48');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('45462534/19.03.2022', '3/19/22', '45462534', '92, 45, 57, 89', 'На исследовании', '', '106', '48');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('hh123/20.03.2022', '3/20/22', '123', '92, 45, 57, 88, 45', 'На исследовании', '', '109', '78');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('fj23/21.03.2022', '3/21/22', '23', '98, 45, 89, 353, 336, 35', 'Новая', '', '110', '16');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('8739/22.03.2022', '3/22/22', '8739', '34, 31, 353, 338', 'Закрыта', '4/22/22', '104', '78');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('37728/23.03.2022', '3/23/22', '37728', '98, 45, 89, 99, 125', 'На исследовании', '', '105', '160');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('34yy32/24.03.2022', '3/24/22', '3432', '92, 45, 57, 90', 'На исследовании', '', '106', '28');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('873/25.03.2022', '3/25/22', '873', '92, 45, 57, 88, 46', 'На исследовании', '', '109', '20');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('ue378/26.03.2022', '3/26/22', '378', '98, 45, 89, 353, 336, 36', 'Закрыта', '4/26/22', '110', '72');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('45462542/27.03.2022', '3/27/22', '45462542', '34, 31, 353, 339', 'Новая', '', '104', '8');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('45462543/28.03.2022', '3/28/22', '45462543', '98, 45, 89, 99, 126', 'На исследовании', '', '105', '48');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('45462531/29.03.2022', '3/29/22', '45462531', '92, 45, 57, 91', 'На исследовании', '', '106', '48');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('45462532/30.03.2022', '3/30/22', '45462532', '92, 45, 57, 88, 47', 'Новая', '', '109', '78');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('45462533/31.03.2022', '3/31/22', '45462533', '98, 45, 89, 353, 336, 37', 'Новая', '', '110', '16');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('45462534/01.04.2022', '4/1/22', '45462534', '34, 31, 353, 340', 'Закрыта', '5/2/22', '104', '78');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('45462535/02.04.2022', '4/2/22', '45462535', '98, 45, 89, 99, 127', 'Новая', '', '105', '16');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('hh123/03.04.2022', '4/3/22', '123', '92, 45, 57, 92', 'Новая', '', '106', '28');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('fj23/04.04.2022', '4/4/22', '23', '92, 45, 57, 88, 48', 'На исследовании', '', '109', '20');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('8739/05.04.2022', '4/5/22', '8739', '98, 45, 89, 353, 336, 38', 'На исследовании', '', '110', '72');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('37728/06.04.2022', '4/6/22', '37728', '34, 31, 353, 341', 'На исследовании', '', '104', '8');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('34yy32/07.04.2022', '4/7/22', '3432', '98, 45, 89, 99, 128', 'На исследовании', '', '105', '48');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('873/08.04.2022', '4/8/22', '873', '92, 45, 57, 93', 'Закрыта', '5/9/22', '106', '48');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('ue378/09.04.2022', '4/9/22', '378', '92, 45, 57, 88, 49', 'Новая', '', '109', '78');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('45462556/10.04.2022', '4/10/22', '45462556', '98, 45, 89, 353, 336, 39', 'На исследовании', '', '110', '16');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('45462557/11.04.2022', '4/11/22', '45462557', '34, 31, 353, 342', 'На исследовании', '', '104', '78');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('45462558/12.04.2022', '4/12/22', '45462558', '98, 45, 89, 99, 129', 'Новая', '', '105', '16');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('45462559/13.04.2022', '4/13/22', '45462559', '92, 45, 57, 94', 'Новая', '', '106', '28');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('45462579/14.04.2022', '4/14/22', '45462579', '92, 45, 57, 88, 50', 'Новая', '', '109', '20');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('45462580/15.04.2022', '4/15/22', '45462580', '98, 45, 89, 353, 336, 40', 'На исследовании', '', '110', '72');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('45462581/16.04.2022', '4/16/22', '45462581', '34, 31, 353, 343', 'На исследовании', '', '104', '8');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('45462582/17.04.2022', '4/17/22', '45462582', '98, 45, 89, 99, 130', 'На исследовании', '', '105', '48');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('hh123/18.04.2022', '4/18/22', '123', '92, 45, 57, 95', 'Закрыта', '5/19/22', '106', '48');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('fj23/19.04.2022', '4/19/22', '23', '92, 45, 57, 88, 51', 'На исследовании', '', '109', '78');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('8739/20.04.2022', '4/20/22', '8739', '98, 45, 89, 353, 336, 41', 'Новая', '', '110', '16');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('37728/21.04.2022', '4/21/22', '37728', '34, 31, 353, 344', 'Закрыта', '5/22/22', '104', '78');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('34yy32/22.04.2022', '4/22/22', '3432', '98, 45, 89, 99, 131', 'На исследовании', '', '105', '16');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('873/23.04.2022', '4/23/22', '873', '92, 45, 57, 96', 'На исследовании', '', '106', '28');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('ue378/24.04.2022', '4/24/22', '378', '92, 45, 57, 88, 52', 'На исследовании', '', '109', '20');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('45462534/25.04.2022', '4/25/22', '45462534', '98, 45, 89, 353, 336, 42', 'На исследовании', '', '110', '72');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('45462535/26.04.2022', '4/26/22', '45462535', '34, 31, 353, 345', 'На исследовании', '', '104', '8');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('45462536/27.04.2022', '4/27/22', '45462536', '98, 45, 89, 99, 132', 'Закрыта', '5/28/22', '105', '48');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('45462537/28.04.2022', '4/28/22', '45462537', '92, 45, 57, 97', 'Новая', '', '106', '48');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('45462575/29.04.2022', '4/29/22', '45462575', '92, 45, 57, 88, 53', 'Новая', '', '109', '78');
INSERT INTO `orders` (`order_number`, `date_create`, `client_code`, `uslugi`, `status`, `date_close`, `sotr_code`, `time_good`) VALUES ('45462576/30.04.2022', '4/30/22', '45462576', '98, 45, 89, 353, 336, 43', 'Новая', '', '110', '16');

INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Фролов Андрей Иванович', '45462526', 'Серия 1180 Номер 176596', '7/14/01', '344288, г. Москва, ул. Чехова, 1, кв. 34', 'gohufreilagrau-3818@yopmail.com', 'cl12345');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Николаев Даниил Всеволодович', '45462527', 'Серия 2280 Номер 223523', '2/10/01', '614164, г. Москва, ул. Степная, 30, кв. 75', 'xawugosune-1385@yopmail.com', 'cl12346');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Снегирев Макар Иванович', '45462528', 'Серия 4560 Номер 354155', '5/21/98', '394242, г. Москва, ул. Коммунистическая, 43, кв. 57', 'satrahuddusei-4458@yopmail.com', 'cl12347');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Иванов Иван Ильич', '45462529', 'Серия 9120 Номер 554296', '10/1/98', '660540, г. Москва, ул. Солнечная, 25, кв. 78', 'boippaxeufrepra-7093@yopmail.com', 'cl12348');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Филиппова Анна Глебовна', '45462530', 'Серия 2367 Номер 558134', '5/31/76', '125837, г. Москва, ул. Шоссейная, 40, кв. 92', 'zapramaxesu-7741@yopmail.com', 'cl12349');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Иванов Михаил Владимирович', '45462531', 'Серия 7101 Номер 669343', '11/4/85', '125703, г. Москва, ул. Партизанская, 49, кв. 84', 'rouzecroummegre-3899@yopmail.com', 'cl12350');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Власов Дмитрий Александрович', '45462532', 'Серия 3455 Номер 719630', '8/17/98', '625283, г. Москва, ул. Победы, 46, кв. 7', 'ziyeuddocrabri-4748@yopmail.com', 'cl12351');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Серова Екатерина Львовна', '45462533', 'Серия 2377 Номер 871623', '10/24/84', '614611, г. Москва, ул. Молодежная, 50, кв. 78', 'ketameissoinnei-1951@yopmail.com', 'cl12352');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Борисова Ирина Ивановна', '45462534', 'Серия 8755 Номер 921148', '10/14/76', '454311, г. Москва, ул. Новая, 19, кв. 78', 'yipraubaponou-5849@yopmail.com', 'cl12353');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Зайцев Никита Артёмович', '45462535', 'Серия 4355 Номер 104594', '10/14/99', '660007, г. Москва, ул. Октябрьская, 19, кв. 42', 'crapedocouca-3572@yopmail.com', 'cl12354');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Медведев Святослав Евгеньевич', '45462536', 'Серия 2791 Номер 114390', '7/13/85', '603036, г. Москва, ул. Садовая, 4, кв. 13', 'ceigoixakaunni-9227@yopmail.com', 'cl12355');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Коротков Кирилл Алексеевич', '45462537', 'Серия 5582 Номер 126286', '5/26/76', '450983, г. Москва, ул. Комсомольская, 26, кв. 60', 'yeimmeiwauzomo-7054@yopmail.com', 'cl12356');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Калашникова Арина Максимовна', '45462538', 'Серия 2978 Номер 133653', '8/13/99', '394782, г. Москва, ул. Чехова, 3, кв. 14', 'poleifenevi-1560@yopmail.com', 'cl12357');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Минина Таисия Кирилловна', '45462539', 'Серия 7512 Номер 141956', '10/13/85', '603002, г. Москва, ул. Дзержинского, 28, кв. 56', 'kauprezofautei-6607@yopmail.com', 'cl12358');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Наумов Серафим Романович', '45462540', 'Серия 5046 Номер 158433', '4/15/99', '450558, г. Москва, ул. Набережная, 30, кв. 71', 'quaffaullelourei-1667@yopmail.com', 'cl12359');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Воробьева Василиса Евгеньевна', '45462541', 'Серия 2460 Номер 169505', '1/13/99', '394060, г. Москва, ул. Фрунзе, 43, кв. 79', 'jsteele@rojas-robinson.net', 'cl12360');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Калинин Александр Андреевич', '45462542', 'Серия 3412 Номер 174593', '1/7/99', '410661, г. Москва, ул. Школьная, 50, кв. 53', 'vhopkins@lewis-mullen.com', 'cl12361');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Кузнецова Милана Владиславовна', '45462543', 'Серия 4950 Номер 183034', '1/24/99', '625590, г. Москва, ул. Коммунистическая, 20, кв. 34', 'nlewis@yahoo.com', 'cl12362');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Фирсов Егор Романович', '45462544', 'Серия 5829 Номер 219464', '9/2/93', '625683, г. Москва, ул. 8 Марта, 20, кв. 21', 'garciadavid@mckinney-mcbride.com', 'cl12363');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Зимина Агния Александровна', '45462545', 'Серия 6443 Номер 208059', '9/3/98', '400562, г. Москва, ул. Зеленая, 32, кв. 67', 'cbradley@castro.com', 'cl12364');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Титов Андрей Глебович', '45462546', 'Серия 7079 Номер 213265', '10/23/85', '614510, г. Москва, ул. Маяковского, 47, кв. 72', 'cuevascatherine@carlson.biz', 'cl12365');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Орлов Николай Егорович', '45462547', 'Серия 8207 Номер 522702', '7/27/85', '410542, г. Москва, ул. Светлая, 46, кв. 82', 'thomasmoore@wilson-singh.net', 'cl12366');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Кузнецова Аиша Михайловна', '45462548', 'Серия 9307 Номер 232158', '10/4/98', '620839, г. Москва, ул. Цветочная, 8, кв. 100', 'jessica84@hotmail.com', 'cl12367');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Куликов Никита Георгиевич', '45462549', 'Серия 1357 Номер 242839', '4/23/99', '443890, г. Москва, ул. Коммунистическая, 1, кв. 10', 'jessicapark@hotmail.com', 'cl12368');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Карпова София Егоровна', '45462550', 'Серия 1167 Номер 256636', '10/1/93', '603379, г. Москва, ул. Спортивная, 46, кв. 95', 'ginaritter@schneider-buchanan.com', 'cl12369');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Смирнова Дарья Макаровна', '45462551', 'Серия 1768 Номер 266986', '3/22/76', '603721, г. Москва, ул. Гоголя, 41, кв. 57', 'stephen99@yahoo.com', 'cl12370');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Абрамова Александра Мироновна', '45462552', 'Серия 1710 Номер 427875', '3/26/99', '410172, г. Москва, ул. Северная, 13, кв. 86', 'lopezlisa@hotmail.com', 'cl12371');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Наумов Руслан Михайлович', '45462553', 'Серия 1806 Номер 289145', '10/11/99', '420151, г. Москва, ул. Вишневая, 32, кв. 81', 'lori17@hotmail.com', 'cl12372');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Бочаров Никита Матвеевич', '45462554', 'Серия 1587 Номер 291249', '6/29/97', '125061, г. Москва, ул. Подгорная, 8, кв. 74', 'campbellkevin@gardner.com', 'cl12373');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Соловьев Давид Ильич', '45462555', 'Серия 1647 Номер 306372', '3/6/84', '630370, г. Москва, ул. Шоссейная, 24, кв. 81', 'morganhoward@clark.com', 'cl12374');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Васильева Валерия Дмитриевна', '45462556', 'Серия 1742 Номер 316556', '9/30/99', '614753, г. Москва, ул. Полевая, 35, кв. 39', 'carsontamara@gmail.com', 'cl12375');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Макарова Василиса Андреевна', '45462557', 'Серия 1474 Номер 326347', '4/8/99', '426030, г. Москва, ул. Маяковского, 44, кв. 93', 'kevinpatel@gmail.com', 'cl12376');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Алексеев Матвей Викторович', '45462558', 'Серия 1452 Номер 339539', '8/2/98', '450375, г. Москва, ул. Клубная, 44, кв. 80', 'sethbishop@yahoo.com', 'cl12377');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Никитина Полина Александровна', '45462559', 'Серия 2077 Номер 443480', '9/19/76', '625560, г. Москва, ул. Некрасова, 12, кв. 66', 'drollins@schultz-soto.net', 'cl12378');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Окулова Олеся Алексеевна', '45462560', 'Серия 2147 Номер 357518', '4/3/99', '630201, г. Москва, ул. Комсомольская, 17, кв. 25', 'pblack@copeland-winters.org', 'cl12379');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Захарова Полина Яновна', '45462561', 'Серия 2687 Номер 363884', '4/21/76', '190949, г. Москва, ул. Мичурина, 26, кв. 93', 'johnathon.oberbrunner@yahoo.com', 'cl12380');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Зайцев Владимир Давидович', '45462562', 'Серия 2376 Номер 443711', '1/26/98', '350501, г. Москва, ул. Парковая, 2, кв. 7', 'bradly29@gmail.com', 'cl12381');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Иванов Виталий Даниилович', '45462563', 'Серия 2568 Номер 386237', '8/11/76', '450048, г. Москва, ул. Коммунистическая, 21, кв. 3', 'stark.cristina@hilpert.biz', 'cl12382');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Захаров Матвей Романович', '45462564', 'Серия 2556 Номер 439376', '7/12/93', '644921, г. Москва, ул. Школьная, 46, кв. 37', 'bruen.eleanore@yahoo.com', 'cl12383');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Иванов Степан Степанович', '45462565', 'Серия 2737 Номер 407501', '9/19/98', '614228, г. Москва, ул. Дорожная, 36, кв. 54', 'percival.halvorson@yahoo.com', 'cl12384');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Ткачева Милана Тимуровна', '45462566', 'Серия 2581 Номер 441645', '5/24/98', '350940, г. Москва, ул. Первомайская, 23, кв. 2', 'javonte71@kuhlman.biz', 'cl12385');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Семенов Даниил Иванович', '45462567', 'Серия 2675 Номер 427933', '1/4/76', '344990, г. Москва, ул. Красноармейская, 19, кв. 92', 'vconnelly@kautzer.com', 'cl12386');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Виноградов Вячеслав Дмитриевич', '45462568', 'Серия 2967 Номер 434531', '7/12/76', '410248, г. Москва, ул. Чкалова, 11, кв. 75', 'anabelle07@schultz.info', 'cl12387');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Соболева Николь Фёдоровна', '45462569', 'Серия 3070 Номер 449655', '5/2/76', '400839, г. Москва, ул. 8 Марта, 46, кв. 44', 'nitzsche.katlynn@yahoo.com', 'cl12388');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Тихонова Анна Львовна', '45462570', 'Серия 3108 Номер 451174', '3/23/85', '450539, г. Москва, ул. Заводская, 3, кв. 81', 'corine16@von.com', 'cl12389');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Кузнецова Ульяна Савельевна', '45462571', 'Серия 3250 Номер 464705', '6/3/99', '614591, г. Москва, ул. Цветочная, 20, кв. 40', 'otha.wisozk@lubowitz.org', 'cl12390');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Смирнова Анна Германовна', '45462572', 'Серия 3392 Номер 471644', '7/18/97', '400260, г. Москва, ул. Больничная, 30, кв. 53', 'may.kirlin@hotmail.com', 'cl12391');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Черепанова Анна Давидовна', '45462573', 'Серия 3497 Номер 487819', '11/6/85', '660924, г. Москва, ул. Молодежная, 32, кв. 59', 'bryana.kautzer@yahoo.com', 'cl12392');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Григорьев Максим Кириллович', '45462574', 'Серия 3560 Номер 491260', '5/26/99', '644133, г. Москва, ул. Гагарина, 28, кв. 69', 'deborah.christiansen@quigley.biz', 'cl12393');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Голубев Даниэль Александрович', '45462575', 'Серия 3620 Номер 506034', '6/14/99', '450698, г. Москва, ул. Вокзальная, 14, кв. 37', 'connelly.makayla@yahoo.com', 'cl12394');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Миронов Юрий Денисович', '45462576', 'Серия 3774 Номер 511438', '1/26/85', '620653, г. Москва, ул. Западная, 15, кв. 25', 'tatum.collins@fay.org', 'cl12395');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Терехов Михаил Андреевич', '45462577', 'Серия 3862 Номер 521377', '7/6/76', '644321, г. Москва, ул. Клубная, 32, кв. 10', 'itzel73@anderson.com', 'cl12396');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Орлова Алиса Михайловна', '45462578', 'Серия 3084 Номер 535966', '2/24/97', '603653, г. Москва, ул. Молодежная, 2, кв. 45', 'arjun39@hotmail.com', 'cl12397');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Кулаков Константин Даниилович', '45462579', 'Серия 4021 Номер 541528', '6/20/93', '410181, г. Москва, ул. Механизаторов, 16, кв. 74', 'ohara.rebeka@yahoo.com', 'cl12398');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Кудрявцев Максим Романович', '45462580', 'Серия 4109 Номер 554053', '5/10/98', '394207, г. Москва, ул. Свердлова, 31, кв. 28', 'danika58@rath.com', 'cl12399');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Соболева Кира Фёдоровна', '45462581', 'Серия 4537 Номер 564868', '3/14/98', '420633, г. Москва, ул. Матросова, 18, кв. 41', 'janae.bogan@gmail.com', 'cl12400');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Коновалов Арсений Максимович', '45462582', 'Серия 4914 Номер 572471', '2/18/85', '445720, г. Москва, ул. Матросова, 50, кв. 67', 'vern91@yahoo.com', 'cl12401');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Гусев Михаил Дмитриевич', '45462583', 'Серия 4445 Номер 581302', '11/23/99', '400646, г. Москва, ул. Октябрьская, 47, кв. 65', 'mariana.leannon@larkin.net', 'cl12402');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Суханова Варвара Матвеевна', '45462584', 'Серия 4743 Номер 598180', '9/13/93', '644410, г. Москва, ул. Красная, 17, кв. 69', 'vmoore@gmail.com', 'cl12403');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Орлова Ясмина Васильевна', '45462585', 'Серия 4741 Номер 601821', '6/24/84', '400750, г. Москва, ул. Школьная, 36, кв. 71', 'damon.mcclure@mills.com', 'cl12404');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Васильева Ксения Константиновна', '45462586', 'Серия 4783 Номер 612567', '8/1/99', '660590, г. Москва, ул. Дачная, 37, кв. 70', 'grady.reilly@block.com', 'cl12405');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Борисова Тамара Данииловна', '45462587', 'Серия 4658 Номер 621200', '5/29/93', '426083, г. Москва, ул. Механизаторов, 41, кв. 26', 'boyd.koss@yahoo.com', 'cl12406');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Дмитриев Мирон Ильич', '45462588', 'Серия 4908 Номер 634613', '4/13/85', '410569, г. Москва, ул. Парковая, 36, кв. 17', 'obartell@franecki.info', 'cl12407');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Лебедева Анна Александровна', '45462589', 'Серия 5092 Номер 642468', '3/30/85', '443375, г. Москва, ул. Дзержинского, 50, кв. 95', 'reina75@ferry.net', 'cl12408');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Пономарев Артём Маркович', '45462590', 'Серия 5155 Номер 465274', '6/2/84', '614316, г. Москва, ул. Первомайская, 48, кв. 31', 'karson28@hotmail.com', 'cl12409');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Борисова Елена Михайловна', '45462591', 'Серия 5086 Номер 666893', '5/23/76', '445685, г. Москва, ул. Зеленая, 7, кв. 47', 'damaris61@okon.com', 'cl12410');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Моисеев Камиль Максимович', '45462592', 'Серия 5333 Номер 675375', '6/17/99', '614505, г. Москва, ул. Нагорная, 37, кв. 31', 'carroll.jerod@hotmail.com', 'cl12411');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Герасимова Дарья Константиновна', '45462593', 'Серия 5493 Номер 684572', '10/13/84', '426629, г. Москва, ул. Весенняя, 32, кв. 46', 'ron.treutel@quitzon.com', 'cl12412');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Михайлова Мария Марковна', '45462594', 'Серия 5150 Номер 696226', '12/2/76', '603743, г. Москва, ул. Матросова, 19, кв. 20', 'olen79@yahoo.com', 'cl12413');
INSERT INTO `clients_fl` (`fio`, `code_client`, `pasport_dannie`, `date_of_birth`, `adress`, `e-mail`, `password`) VALUES ('Коршунов Кирилл Максимович', '45462595', 'Серия 1308 Номер 703305', '5/22/85', '450750, г. Москва, ул. Клубная, 23, кв. 90', 'pacocha.robbie@yahoo.com', 'cl12414');

INSERT INTO `uslugi` (`id_uslugi`, `naimenovanie_uslugi`, `kod_uslugi`, `srok_vypolnenia`, `srednee_otklonenie`, `stoimost`, `stoimost_namepost`) VALUES ('336', 'Содержание хрома', '8HFJHG443', '12', '0.040', '12000', '1100');
INSERT INTO `uslugi` (`id_uslugi`, `naimenovanie_uslugi`, `kod_uslugi`, `srok_vypolnenia`, `srednee_otklonenie`, `stoimost`, `stoimost_namepost`) VALUES ('353', 'Содержание никеля', '87FDJKHJ', '72', '0.012', '24000', '800');
INSERT INTO `uslugi` (`id_uslugi`, `naimenovanie_uslugi`, `kod_uslugi`, `srok_vypolnenia`, `srednee_otklonenie`, `stoimost`, `stoimost_namepost`) VALUES ('31', 'Содержание ртути', 'JUR8R', '10', '0.060', '24000', '930');
INSERT INTO `uslugi` (`id_uslugi`, `naimenovanie_uslugi`, `kod_uslugi`, `srok_vypolnenia`, `srednee_otklonenie`, `stoimost`, `stoimost_namepost`) VALUES ('34', 'Содержание хлора', 'JKFBJ09', '2', '0.011', '32000', '450');
INSERT INTO `uslugi` (`id_uslugi`, `naimenovanie_uslugi`, `kod_uslugi`, `srok_vypolnenia`, `srednee_otklonenie`, `stoimost`, `stoimost_namepost`) VALUES ('98', 'Проверка концентрации основного компонента', '63748HF', '23', '0.012', '23000', '1200');
INSERT INTO `uslugi` (`id_uslugi`, `naimenovanie_uslugi`, `kod_uslugi`, `srok_vypolnenia`, `srednee_otklonenie`, `stoimost`, `stoimost_namepost`) VALUES ('45', 'Содержание аллергенов', 'JFH7382', '13', '0.010', '30000', '3000');
INSERT INTO `uslugi` (`id_uslugi`, `naimenovanie_uslugi`, `kod_uslugi`, `srok_vypolnenia`, `srednee_otklonenie`, `stoimost`, `stoimost_namepost`) VALUES ('89', 'Однородность состава', 'OIJNB12', '24', '0.010', '23000', '450');
INSERT INTO `uslugi` (`id_uslugi`, `naimenovanie_uslugi`, `kod_uslugi`, `srok_vypolnenia`, `srednee_otklonenie`, `stoimost`, `stoimost_namepost`) VALUES ('99', 'Соответствие состава ГОСТ', 'BSFBHV63', '36', '0.050', '12000', '1000');
INSERT INTO `uslugi` (`id_uslugi`, `naimenovanie_uslugi`, `kod_uslugi`, `srok_vypolnenia`, `srednee_otklonenie`, `stoimost`, `stoimost_namepost`) VALUES ('92', 'Соответствие состава ТУ', 'HJBUJE21J', '12', '0.050', '15000', '1000');
INSERT INTO `uslugi` (`id_uslugi`, `naimenovanie_uslugi`, `kod_uslugi`, `srok_vypolnenia`, `srednee_otklonenie`, `stoimost`, `stoimost_namepost`) VALUES ('44', 'Проверка на высоких температурах', 'DHBGFY563', '5', '0.050', '100000', '12000');
INSERT INTO `uslugi` (`id_uslugi`, `naimenovanie_uslugi`, `kod_uslugi`, `srok_vypolnenia`, `srednee_otklonenie`, `stoimost`, `stoimost_namepost`) VALUES ('57', 'Проверка на высоких температурах', 'JHVSJF6', '48', '0.050', '100000', '12000');
INSERT INTO `uslugi` (`id_uslugi`, `naimenovanie_uslugi`, `kod_uslugi`, `srok_vypolnenia`, `srednee_otklonenie`, `stoimost`, `stoimost_namepost`) VALUES ('88', 'Герметичность упаковки', 'DJHGBS982', '4', '0.030', '6000', '300');
INSERT INTO `uslugi` (`id_uslugi`, `naimenovanie_uslugi`, `kod_uslugi`, `srok_vypolnenia`, `srednee_otklonenie`, `stoimost`, `stoimost_namepost`) VALUES ('123', 'Соответствие срокам годности', '638VVNQ3', '6', '0.050', '10000', '600');
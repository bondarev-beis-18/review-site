-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 15 2021 г., 19:45
-- Версия сервера: 10.3.13-MariaDB
-- Версия PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `review-site`
--

-- --------------------------------------------------------

--
-- Структура таблицы `companies`
--

CREATE TABLE `companies` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Logo` varchar(200) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `companies`
--

INSERT INTO `companies` (`ID`, `Name`, `Logo`, `Description`) VALUES
(1, 'Company1', 'https://dynamic.brandcrowd.com/asset/logo/7a61d944-addb-44ab-91c8-cda41786e9e4/logo?v=637189140343370000', 'Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!Company1 is AMAZING!!!'),
(2, 'Company2', 'https://dynamic.brandcrowd.com/asset/logo/1b86ef3e-f2f3-4f3e-a6c2-6ffbd0e451d4/logo?v=637135210288230000', 'Company2 is boring(((Company2 is boring(((Company2 is boring(((Company2 is boring(((Company2 is boring(((Company2 is boring(((Company2 is boring(((Company2 is boring(((Company2 is boring(((Company2 is boring(((Company2 is boring(((Company2 is boring(((Company2 is boring(((Company2 is boring(((Company2 is boring(((Company2 is boring(((Company2 is boring((('),
(3, 'Company_3', 'https://dynamic.brandcrowd.com/asset/logo/2b712dfe-f844-4c6e-b787-276fa680eef7/logo?v=637314354118530000', 'dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 dsc3 '),
(4, 'Company_4', 'https://dynamic.brandcrowd.com/asset/logo/7c5c415f-820d-446e-82cd-4cd3a02db3a4/logo?v=637339976618870000', 'dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 dsc4 '),
(5, 'Company5', 'https://dynamic.brandcrowd.com/asset/logo/8cb54db0-7219-4bf6-bba3-1c9e94078516/logo?v=637159702607130000', 'dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 dsc5 '),
(6, 'Company6', 'https://dynamic.brandcrowd.com/asset/logo/76cef6ba-4313-4795-98cb-e3962e76ab74/logo?v=637540471433830000', 'dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 dsc6 ');

-- --------------------------------------------------------

--
-- Структура таблицы `companies-reviews`
--

CREATE TABLE `companies-reviews` (
  `ID` int(11) NOT NULL,
  `Company_ID` int(11) NOT NULL,
  `Review_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `companies-reviews`
--

INSERT INTO `companies-reviews` (`ID`, `Company_ID`, `Review_ID`) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 6, 1),
(4, 6, 2),
(5, 6, 3),
(6, 6, 4),
(7, 6, 5),
(8, 6, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `ID` int(11) NOT NULL,
  `User_name` text NOT NULL,
  `Photo` varchar(200) NOT NULL,
  `Review_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`ID`, `User_name`, `Photo`, `Review_text`) VALUES
(1, 'Barinov Ilya Petrovich', 'https://www.nouveaucosmeticcenter.com/files/2018/09/prp.jpg', 'Зашли с женой просто так. Оказалось очень интересно. В живописи я профан, поэтому оценить картины не могу. Но скульптура классная. Не мало важно, что в галерее демократичная атмосфера. Можно снимать. Есть где отдохнуть. Удалось пообщаться с самим мэтром. Не смотря на свои 87 лет Зураб Константинович очень подвижен, общителен. Несмотря на заслуги не забронзовел! Рекомендую всем для посещения в любом возрасте.'),
(2, 'Koluchiy Ivan Borisovich', 'https://cdn1.flamp.ru/9305f3444977374ba4b4d74bcb591f97_300_300.jpeg', 'Уже не в первый раз прихожу сюда на музыкальное представление. Оперная студия Canta сотрудничает с Галереей постоянно, проводит здесь концерты своих студентов. В этот раз состоялась премьера оперы В.А.Моцарта \"Свадьба Фигаро\". Величественный зал с Яблоком, фигуры императоров и поэтов как бы вместе с нами наблюдали за действием. Акустика сложная, порой мешала исполнителям, но они достойно преодолели все препятствия. Сам спектакль получился замечательным! До начала была возможность пройтись по залам и зарядиться энергией создателя всего этого буйства красок.'),
(3, 'Efimov Ilya Andreevich', 'https://www.peninsulahealth.org.au/wp-content/uploads/adult-1.png', 'О работах Церетели спорят давно, многим не нравятся его монументальные произведения, которые и на виду и на слуху. Здесь же есть возможность увидеть все многообразие его работ. Несомненно, какие-то из них заставят остановиться и рассматривать их более внимательно: кого-то удивит их необычность, кого-то яркий своеобразный колорит, а кого-то умение Церетели очень точно подмечать характерные особенности (мимику, жест, позу и т.п.) конкретных людей.\r\nОбязательно посетите, если и не понравится, то будет что обсуждать. Учтите, что в залах верхнего этажа обычно проводятся разнообразные художественные выстави, как правило, весьма качественные.'),
(4, 'Grudinin Dmitriy Anatolievich', 'https://cdn1.flamp.ru/d57cfd8bc6043c017e5a396f05c04d90_300_300.jpg', 'Каждый год 2 января мы отправляемся на экскурсии по Москве или Подмосковью. В этом году мы с \"магазином путешествий\" отправились на прогулку по Пречистенке с последующей экскурсией в галерею Название. Пречистенке славится своими о особняка ми. Наша экскурсовод Раиса рассказала о каждом доме на Пречистенке, ещё мы заходили в замечательные переулки. Мы ходили два часа, но можно ходить и весь день. Экскурсию в галерее проводила очень милая дама - экскурсовод галереи. У нашего экскурсовода очень обширные знания не только в рамках творчества Церетели, но и глубокие познания в истории, религии, иконописи. После окончания экскурсии по галерее она провела нам за постельную экскурсию по выставке Каргопольский икон! Галерея поражает масштабами творчества Церетели. Художник, скульптор- Церетели владеет многими техниками живописи. В галерее есть иконы, картины, макеты памятников, скульптуры. Обязательно сходите в галерею!'),
(5, 'Okunev Vasiliy Andreevich', 'https://biography-live.ru/wp-content/uploads/2019/05/dwayne-johnson-11818916-1-402.jpg', 'razvod'),
(6, 'Terentiev Nikolai Alexandrovich', 'https://photo1.wambacdn.net/05/40/03/1752300450/1804152258_square.jpg?hash=WNR4WYA2m7NI3apiYBs9bg&expires=64060578000&updated=1507206175', 'Отличный коллектив - реально все уже сдружились, просто супер. Руководители понимают сам процесс работы каждого сотрудника и помогают всем без исключения. 2) Система KPI позволяет реально хорошо зарабатывать по простому принципу - чем больше и лучше ты работаешь, тем больше денег получаешь. 3) Соцпакет - отличная страховка ДМС, организовали курсы английского языка бесплатно (получил сертификат и очень доволен), оплачивают половину стоимости фитнеса. 4) Зарплату выплачивают всегда вовремя\r\nОтличный коллектив - реально все уже сдружились, просто супер. Руководители понимают сам процесс работы каждого сотрудника и помогают всем без исключения. 2) Система KPI позволяет реально хорошо зарабатывать по простому принципу - чем больше и лучше ты работаешь, тем больше денег получаешь. 3) Соцпакет - отличная страховка ДМС, организовали курсы английского языка бесплатно (получил сертификат и очень доволен), оплачивают половину стоимости фитнеса. 4) Зарплату выплачивают всегда вовремяОтличный коллектив - реально все уже сдружились, просто супер. Руководители понимают сам процесс работы каждого сотрудника и помогают всем без исключения. 2) Система KPI позволяет реально хорошо зарабатывать по простому принципу - чем больше и лучше ты работаешь, тем больше денег получаешь. 3) Соцпакет - отличная страховка ДМС, организовали курсы английского языка бесплатно (получил сертификат и очень доволен), оплачивают половину стоимости фитнеса. 4) Зарплату выплачивают всегда вовремяОтличный коллектив - реально все уже сдружились, просто супер. Руководители понимают сам процесс работы каждого сотрудника и помогают всем без исключения. 2) Система KPI позволяет реально хорошо зарабатывать по простому принципу - чем больше и лучше ты работаешь, тем больше денег получаешь. 3) Соцпакет - отличная страховка ДМС, организовали курсы английского языка бесплатно (получил сертификат и очень доволен), оплачивают половину стоимости фитнеса. 4) Зарплату выплачивают всегда вовремяОтличный коллектив - реально все уже сдружились, просто супер. Руководители понимают сам процесс работы каждого сотрудника и помогают всем без исключения. 2) Система KPI позволяет реально хорошо зарабатывать по простому принципу - чем больше и лучше ты работаешь, тем больше денег получаешь. 3) Соцпакет - отличная страховка ДМС, организовали курсы английского языка бесплатно (получил сертификат и очень доволен), оплачивают половину стоимости фитнеса. 4) Зарплату выплачивают всегда вовремя\r\n');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `companies-reviews`
--
ALTER TABLE `companies-reviews`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Index_1` (`Company_ID`),
  ADD KEY `Index_2` (`Review_ID`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `companies`
--
ALTER TABLE `companies`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `companies-reviews`
--
ALTER TABLE `companies-reviews`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `companies-reviews`
--
ALTER TABLE `companies-reviews`
  ADD CONSTRAINT `companies-reviews_ibfk_1` FOREIGN KEY (`Review_ID`) REFERENCES `reviews` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `companies-reviews_ibfk_2` FOREIGN KEY (`Company_ID`) REFERENCES `companies` (`ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

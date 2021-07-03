-- Keep a log of any SQL queries you execute as you solve the mystery.

SELECT * FROM crime_scene_reports WHERE street = "Chamberlin Street" AND day = 28
id |年|月|日|通り|説明
295 | 2020 | 7 | 28 |チェンバリンストリート| CS50アヒルの盗難は、午前10時15分にチェンバリンストリートの郡庁舎で行われました。インタビューは本日、当時出席していた3人の証人に実施されました。インタビューの記録には、それぞれ裁判所が記載されています。

SELECT * FROM interviews WHERE day = 28 AND month = 7;
id |名前|年|月|日|トランスクリプト
158 |ホセ| 2020 | 7 | 28 | 「ああ」と彼は言った、「私はあなたに数週間会っていなかったことを忘れました。アイリーン・アドラーの論文の場合の私の援助の見返りとして、それはボヘミア王からのちょっとしたお土産です。」
159 |ユジン| 2020 | 7 | 28 | 「ウィンディバンク氏がフランスから戻ってきたとき、彼はあなたがボールに行ったことに非常に腹を立てていたと思います」とホームズは言いました。
160 |バーバラ| 2020 | 7 | 28 | 「あなたは私のメモを持っていましたか？」彼は深く耳障りな声と強くマークされたドイツ語のアクセントで尋ねました。 「私はあなたに電話すると言った。」彼は、どちらに対処すべきかわからないかのように、私たちの一方から他方を見ました。
161 |ルース| 2020 | 7 | 28 |盗難から10分以内に、泥棒が郡庁舎の駐車場で車に乗り込み、車で逃げるのを見ました。郡庁舎の駐車場からのセキュリティ映像がある場合は、その時間枠内に駐車場を出た車を探すことをお勧めします。
162 |ユジン| 2020 | 7 | 28 |泥棒の名前はわかりませんが、私が認識した人物でした。今朝早く、私が裁判所に到着する前に、私はフィファー通りのATMのそばを歩いていて、そこで泥棒がいくらかのお金を引き出しているのを見ました。
163 |レイモンド| 2020 | 7 | 28 |泥棒が郡庁舎を去っていたとき、彼らは1分もかからずに彼らと話している誰かに電話をしました。その電話で、泥棒が明日フィフティビルから一番早い飛行機に乗るつもりだと言っているのを聞いた。泥棒はそれから電話の反対側の人に航空券を購入するように頼んだ。

SELECT * FROM courthouse_security_logs WHERE day = 28 AND month = 7;
盗難から10分以内
259 | 2020 | 7 | 28 | 10 | 14 | entrance | 13FNH73
260 | 2020 | 7 | 28 | 10 | 16 | exit | 5P2BI95
261 | 2020 | 7 | 28 | 10 | 18 | exit | 94KL13X
262 | 2020 | 7 | 28 | 10 | 18 | exit | 6P58WS2
263 | 2020 | 7 | 28 | 10 | 19 | exit | 4328GD8
264 | 2020 | 7 | 28 | 10 | 20 | exit | G412CB7
265 | 2020 | 7 | 28 | 10 | 21 | exit | L93JTIZ
266 | 2020 | 7 | 28 | 10 | 23 | exit | 322W7JE
267 | 2020 | 7 | 28 | 10 | 23 | exit | 0NTHK55
268 | 2020 | 7 | 28 | 10 | 35 | exit | 1106N58

SELECT * FROM atm_transactions WHERE atm_location = "Fifer Street" AND day = 28 AND month = 7
id | account_number | year | month | day | atm_location | transaction_type | amount
246 | 28500762 | 2020 | 7 | 28 | Fifer Street | withdraw | 48
264 | 28296815 | 2020 | 7 | 28 | Fifer Street | withdraw | 20
266 | 76054385 | 2020 | 7 | 28 | Fifer Street | withdraw | 60
267 | 49610011 | 2020 | 7 | 28 | Fifer Street | withdraw | 50
269 | 16153065 | 2020 | 7 | 28 | Fifer Street | withdraw | 80
275 | 86363979 | 2020 | 7 | 28 | Fifer Street | deposit | 10
288 | 25506511 | 2020 | 7 | 28 | Fifer Street | withdraw | 20
313 | 81061156 | 2020 | 7 | 28 | Fifer Street | withdraw | 30
336 | 26013199 | 2020 | 7 | 28 | Fifer Street | withdraw | 35

sqlite> e ON bank_accounts.person_id = people.id WHERE account_number = 26013199;
account_number | person_id | creation_year | id | name | phone_number | passport_number | license_plate
26013199 | 514354 | 2012 | 514354 | Russell | (770) 555-1861 | 3592750733 | 322W7JE
sqlite> e ON bank_accounts.person_id = people.id WHERE account_number = 81061156;
account_number | person_id | creation_year | id | name | phone_number | passport_number | license_plate
81061156 | 438727 | 2018 | 438727 | Victoria | (338) 555-6650 | 9586786673 | 8X428L0
sqlite> e ON bank_accounts.person_id = people.id WHERE account_number = 25506511;
account_number | person_id | creation_year | id | name | phone_number | passport_number | license_plate
25506511 | 396669 | 2014 | 396669 | Elizabeth | (829) 555-5269 | 7049073643 | L93JTIZ
sqlite> e ON bank_accounts.person_id = people.id WHERE account_number = 86363979;
account_number | person_id | creation_year | id | name | phone_number | passport_number | license_plate
86363979 | 948985 | 2010 | 948985 | Robert | (098) 555-1164 | 8304650265 | I449449
sqlite>  ON bank_accounts.person_id = people.id WHERE account_number = 16153065;
account_number | person_id | creation_year | id | name | phone_number | passport_number | license_plate
16153065 | 458378 | 2012 | 458378 | Roy | (122) 555-4581 | 4408372428 | QX4YZN3
sqlite>  ON bank_accounts.person_id = people.id WHERE account_number = 49610011;
account_number | person_id | creation_year | id | name | phone_number | passport_number | license_plate
49610011 | 686048 | 2010 | 686048 | Ernest | (367) 555-5533 | 5773159633 | 94KL13X
sqlite> e ON bank_accounts.person_id = people.id WHERE account_number = 76054385;
account_number | person_id | creation_year | id | name | phone_number | passport_number | license_plate
76054385 | 449774 | 2015 | 449774 | Madison | (286) 555-6063 | 1988161715 | 1106N58
sqlite> e ON bank_accounts.person_id = people.id WHERE account_number = 28296815;
account_number | person_id | creation_year | id | name | phone_number | passport_number | license_plate
28296815 | 395717 | 2014 | 395717 | Bobby | (826) 555-1652 | 9878712108 | 30G67EN
sqlite> e ON bank_accounts.person_id = people.id WHERE account_number = 28500762;
account_number | person_id | creation_year | id | name | phone_number | passport_number | license_plate
28500762 | 467400 | 2014 | 467400 | Danielle | (389) 555-5198 | 8496433585 | 4328GD8

ELECT * FROM phone_calls WHERE day = 28 AND month = 7 AND duration <= 60
id | caller | receiver | year | month | day | duration
221 | (130) 555-0289 | (996) 555-8899 | 2020 | 7 | 28 | 51
224 | (499) 555-9472 | (892) 555-8872 | 2020 | 7 | 28 | 36
233 | (367) 555-5533 | (375) 555-8161 | 2020 | 7 | 28 | 45 Ernest
234 | (609) 555-5876 | (389) 555-5198 | 2020 | 7 | 28 | 60
251 | (499) 555-9472 | (717) 555-1342 | 2020 | 7 | 28 | 50
254 | (286) 555-6063 | (676) 555-6554 | 2020 | 7 | 28 | 43 Madison
255 | (770) 555-1861 | (725) 555-3243 | 2020 | 7 | 28 | 49 Russel
261 | (031) 555-6622 | (910) 555-3251 | 2020 | 7 | 28 | 38
279 | (826) 555-1652 | (066) 555-9701 | 2020 | 7 | 28 | 55 Bobby
281 | (338) 555-6650 | (704) 555-2131 | 2020 | 7 | 28 | 54

sqlite> SELECT * FROM people WHERE phone_number = "(367) 555-5533";
id | name | phone_number | passport_number | license_plate
686048 | Ernest | (367) 555-5533 | 5773159633 | 94KL13X
sqlite> SELECT * FROM people WHERE phone_number = "(286) 555-6063";
id | name | phone_number | passport_number | license_plate
449774 | Madison | (286) 555-6063 | 1988161715 | 1106N58
sqlite> SELECT * FROM people WHERE phone_number = "(770) 555-1861";
id | name | phone_number | passport_number | license_plate
514354 | Russell | (770) 555-1861 | 3592750733 | 322W7JE
sqlite> SELECT * FROM people WHERE phone_number = "(826) 555-1652";
id | name | phone_number | passport_number | license_plate
395717 | Bobby | (826) 555-1652 | 9878712108 | 30G67EN

sqlite> SELECT * FROM airports WHERE city = "Fiftyville";
id | abbreviation | full_name | city
8 | CSF | Fiftyville Regional Airport | Fiftyville

sqlite> SELECT * FROM flights JOIN airports ON flights.origin_airport_id = airports.id WHERE day = 29 AND month = 7 AND city = "Fiftyville";
id | origin_airport_id | destination_airport_id | year | month | day | hour | minute | id | abbreviation | full_name | city
18 | 8 | 6 | 2020 | 7 | 29 | 16 | 0 | 8 | CSF | Fiftyville Regional Airport | Fiftyville
23 | 8 | 11 | 2020 | 7 | 29 | 12 | 15 | 8 | CSF | Fiftyville Regional Airport | Fiftyville
36 | 8 | 4 | 2020 | 7 | 29 | 8 | 20 | 8 | CSF | Fiftyville Regional Airport | Fiftyville これか
43 | 8 | 1 | 2020 | 7 | 29 | 9 | 30 | 8 | CSF | Fiftyville Regional Airport | Fiftyville これ
53 | 8 | 9 | 2020 | 7 | 29 | 15 | 20 | 8 | CSF | Fiftyville Regional Airport | Fiftyville

sqlite> SELECT * FROM passengers JOIN flights ON passengers.flight_id = flights.id WHERE passport_number = 5773159633;
flight_id | passport_number | seat | id | origin_airport_id | destination_airport_id | year | month | day | hour | minute
36 | 5773159633 | 4A | 36 | 8 | 4 | 2020 | 7 | 29 | 8 | 20 Ernest
sqlite> SELECT * FROM passengers JOIN flights ON passengers.flight_id = flights.id WHERE passport_number = 1988161715;
flight_id | passport_number | seat | id | origin_airport_id | destination_airport_id | year | month | day | hour | minute
36 | 1988161715 | 6D | 36 | 8 | 4 | 2020 | 7 | 29 | 8 | 20 Madison
sqlite> SELECT * FROM passengers JOIN flights ON passengers.flight_id = flights.id WHERE passport_number = 3592750733;
flight_id | passport_number | seat | id | origin_airport_id | destination_airport_id | year | month | day | hour | minute
18 | 3592750733 | 4C | 18 | 8 | 6 | 2020 | 7 | 29 | 16 | 0
24 | 3592750733 | 2C | 24 | 7 | 8 | 2020 | 7 | 30 | 16 | 27
54 | 3592750733 | 6C | 54 | 8 | 5 | 2020 | 7 | 30 | 10 | 19
sqlite> SELECT * FROM passengers JOIN flights ON passengers.flight_id = flights.id WHERE passport_number = 9878712108;
flight_id | passport_number | seat | id | origin_airport_id | destination_airport_id | year | month | day | hour | minute
36 | 9878712108 | 7A | 36 | 8 | 4 | 2020 | 7 | 29 | 8 | 20 Bobby

sqlite> SELECT * FROM passengers JOIN flights ON passengers.flight_id = flights.id WHERE passport_number = 9878712108;
flight_id | passport_number | seat | id | origin_airport_id | destination_airport_id | year | month | day | hour | minute
36 | 9878712108 | 7A | 36 | 8 | 4 | 2020 | 7 | 29 | 8 | 20
sqlite> SELECT * FROM people WHERE phone_number = "(375) 555-8161";
id | name | phone_number | passport_number | license_plate
864400 | Berthold | (375) 555-8161 |  | 4V16VO0
sqlite> SELECT * FROM people WHERE phone_number = "(676) 555-6554";
id | name | phone_number | passport_number | license_plate
250277 | James | (676) 555-6554 | 2438825627 | Q13SVG6
sqlite> SELECT * FROM people WHERE phone_number = "(066) 555-9701";
id | name | phone_number | passport_number | license_plate
953679 | Doris | (066) 555-9701 | 7214083635 | M51FA04

sqlite> SELECT * FROM passengers JOIN flights ON passengers.flight_id = flights.id WHERE passport_number = 2438825627;
flight_id | passport_number | seat | id | origin_airport_id | destination_airport_id | year | month | day | hour | minute
10 | 2438825627 | 7C | 10 | 8 | 4 | 2020 | 7 | 30 | 13 | 55
21 | 2438825627 | 6A | 21 | 3 | 8 | 2020 | 7 | 26 | 17 | 58
47 | 2438825627 | 9B | 47 | 4 | 8 | 2020 | 7 | 30 | 9 | 46
sqlite> SELECT * FROM passengers JOIN flights ON passengers.flight_id = flights.id WHERE passport_number = 7214083635;
flight_id | passport_number | seat | id | origin_airport_id | destination_airport_id | year | month | day | hour | minute
36 | 7214083635 | 2A | 36 | 8 | 4 | 2020 | 7 | 29 | 8 | 20












//
//  TeamHelper.swift
//  rc-premier-league
//
//  Created by afx on 12/01/2024.
//

import Foundation

struct TeamHelper {
    
    static var allTeams: [Team] {
        [
            Team(
                name: "Liverpool",
                logoImageName: "liverpool",
                stadiumImageName: "liverpool-stadium",
                description: """
                Liverpool Football Club is a professional football club based in Liverpool, England. The club competes in the Premier League, the top tier of English football. Founded in 1892, the club joined the Football League the following year and has played its home games at Anfield since its formation.

                Domestically, the club has won 19 league titles, eight FA Cups, a record nine League Cups and 16 FA Community Shields. In international competitions, the club has won six European Cups, three UEFA Cups, four UEFA Super Cups—all English records—and one FIFA Club World Cup. The club established itself as a major force in domestic and European football in the 1970s and 1980s, when Bill Shankly, Bob Paisley, Joe Fagan and Kenny Dalglish, led the club to a combined 11 League titles and four European Cups. Liverpool won two further European Cups in 2005 and 2019 under the management of Rafael Benítez and Jürgen Klopp, respectively; the latter led Liverpool to a 19th league title in 2020, the club's first during the Premier League era.

                Liverpool is one of the most valuable and widely supported clubs in the world. The club has long-standing rivalries with Manchester United and Everton. Under management by Shankly, in 1964 the team changed from red shirts and white shorts to an all-red home strip which has been used ever since. The club's anthem is "You'll Never Walk Alone".

                The club's supporters have been involved in two major tragedies. The Heysel Stadium disaster, where escaping fans were pressed against a collapsing wall at the 1985 European Cup Final in Brussels, resulted in 39 deaths. Most of these were Italians and Juventus fans. Liverpool were given a six-year ban from European competition, and all other English clubs received a five-year ban. The Hillsborough disaster in 1989, where 97 Liverpool supporters died in a crush against perimeter fencing, led to the elimination of fenced standing terraces in favour of all-seater stadiums in the top two tiers of English football. Prolonged campaigning for justice saw further coroners inquests, commissions and independent panels that ultimately exonerated the fans.
                """
            ),
            Team(
                name: "Aston Villa",
                logoImageName: "aston-villa",
                stadiumImageName: "aston-villa-stadium",
                description: """
                Aston Villa Football Club, commonly referred to as Villa, is a professional football club based in Aston, Birmingham, England. The club, founded in 1874, competes in the Premier League, the top tier of the English football league system. The team have played at their home ground Villa Park since 1897. Aston Villa is one of the oldest and most successful clubs in England, having won the Football League First Division seven times, the FA Cup seven times, the League Cup five times, and the European Cup and European Super Cup once.

                Aston Villa has been a leading English club since the 1880s, when its team were pioneers of the modern passing game. This short, quick combination passing style was introduced by Scotsman George Ramsay, who was appointed as the world's first professional football manager in 1886. The club was influential in the sport's move to professionalism in 1885, and it was a Villa director, William McGregor, who founded the world's first Football League in 1888.

                George Ramsay's trophy haul of six League Championships and six FA Cups established Aston Villa as the most successful club in England, a position it held from the 1890s until the 1970s. Villa scored 128 goals in season 1930–31, which remains the all-time top-flight record, however the club began its first decline in the mid-1930s; the 1940s and 1950s were generally a period of mediocrity followed by a steep decline in the 1960s which culminated in a takeover of the club by Doug Ellis in 1968 and Villa's first and only relegation to the third tier of English football in 1969–70. Villa returned to the elite from the mid-1970s under manager Ron Saunders, who led the club to a seventh top-flight league title in 1980–81. They became only the fourth English club to win the European Cup, in 1981–82, followed by the European Super Cup in 1982.

                Aston Villa was a founding member of the Premier League in 1992, one of just three clubs to have been founding members of both the Football League and the Premier League. The club regularly qualified for European football in the 1990s, but following a period in which the club struggled to compete with the high levels of spending of the leading clubs, Doug Ellis sold his stake in the club to American billionaire Randy Lerner, whose ownership of the club ended with Villa's first and only relegation from the Premier League in season 2015–16. The club returned to the Premier League in 2019.

                During its history Villa has spent 110 seasons in the top-flight, the second highest of any club, and provided 76 England internationals, also the second highest of any club. Aston Villa is currently ranked 5th in the all-time English top flight table, since its creation in 1888 and is the seventh most successful club in English football by competitive honours.

                Villa have a fierce local rivalry with Birmingham City and the Second City derby between the teams has been played since 1879. There is also a local rivalry with West Bromwich Albion, with matches between the sides known as the West Midlands derby. The club's traditional kit colours are claret shirts with sky blue sleeves, white shorts and sky blue socks. Their traditional club badge is of a rampant lion. The club is currently owned by V Sports, a company owned by the Egyptian billionaire Nassef Sawiris and the American billionaire Wes Edens.
                """,
                logoIsRound: false
            ),
            Team(
                name: "Manchester City",
                logoImageName: "manchester-city",
                stadiumImageName: "manchester-city-stadium",
                description: """
                Manchester City Football Club is a professional football club based in Manchester, England, that competes in the Premier League, the top flight of English football. Founded in 1880 as St. Mark's (West Gorton), they became Ardwick Association Football Club in 1887 and Manchester City in 1894. The club's home ground is the City of Manchester Stadium in east Manchester, to which they moved in 2003, having played at Maine Road since 1923. Manchester City adopted their sky blue home shirts in 1894, the first season with the current name.

                The club joined the Football League in 1892, and won their first major honour, the FA Cup, in 1904. Manchester City had its first major period of success in the late 1960s and early 1970s, winning the league title, FA Cup, League Cup, and European Cup Winners Cup under the management of Joe Mercer and Malcolm Allison. After losing the 1981 FA Cup final, Manchester City went through a period of decline, culminating in relegation to the third tier of English football for the only time in their history in 1998. They since regained promotion to the top tier in 2001–02 and have remained a fixture in the Premier League since 2002–03.

                Manchester City received considerable financial investment both in playing staff and facilities following its takeover by Sheikh Mansour bin Zayed Al Nahyan through the Abu Dhabi United Group in August 2008. This started a new era of success, with the club winning the FA Cup in 2011 and the Premier League in 2012 followed by another league title in 2014. The club's most sustained period of success has come under the incumbent manager Pep Guardiola, with 16 major honours since joining in 2016, and a technical, possession-based style that has been influential on English football. Under his management Manchester City became the only team in Premier League history to attain 100 points in a single season (in 2017-18), the first English men's team to win the domestic treble (in 2018-19), and a continental treble (in 2022-23). The club is ranked first in the UEFA coefficient standings as of the end of the 2022-23 season.

                Manchester City topped the Deloitte Football Money League at the end of the 2021–22 season, making it the football club with the highest revenue in the world, approximated at €731 million. In 2022, Forbes estimated the club was the sixth-most valuable in the world, worth $4.250 billion. Manchester City are owned by City Football Group Limited, a British-based holding company valued at £3.73 ($4.8) billion in November 2019 and majority-owned by the Abu Dhabi United Group.
                """
            ),
            Team(
                name: "Arsenal",
                logoImageName: "arsenal",
                stadiumImageName: "arsenal-stadium",
                description: """
                The Arsenal Football Club, commonly known as Arsenal, is an English professional football club based in Holloway, North London. Arsenal compete in the Premier League, the top flight of English football.

                In domestic football, Arsenal have won 13 league titles (including one unbeaten title), a record 14 FA Cups, two League Cups, 17 FA Community Shields and a Football League Centenary Trophy. In European football, they have one European Cup Winners' Cup and one Inter-Cities Fairs Cup. Arsenal were also runners-up in the 2005–06 UEFA Champions League. In terms of trophies won, it is the third-most successful club in English football.

                Arsenal was the first club from the South of England to join the Football League in 1893, and they reached the First Division in 1904. Relegated only once, in 1913, they continue the longest streak in the top division, and have won the second-most top-flight matches in English football history. In the 1930s, Arsenal won five League Championships and two FA Cups, and another FA Cup and two Championships after the war. In 1970–71, they won their first League and FA Cup Double. Between 1989 and 2005, they won five League titles and five FA Cups, including two more Doubles. They completed the 20th century with the highest average league position. Between 1998 and 2017, Arsenal qualified for the UEFA Champions League for nineteen consecutive seasons.

                In 1886, munitions workers at the Royal Arsenal in Woolwich founded the club as Dial Square. In 1913 the club crossed the city to Arsenal Stadium in Highbury, becoming close neighbours of Tottenham Hotspur, and creating the North London derby. Herbert Chapman, who changed the fortunes of Arsenal forever, won the club its first silverware, and his legacy led the club to dominate the 1930s. He helped introduce the WM formation, floodlights, and shirt numbers; he also added the white sleeves and brighter red to the club's jersey. Arsène Wenger is the club's longest-serving manager and has won the most trophies for it. He won a record seven FA Cups, and his title-winning team set an English record for the longest top-flight unbeaten league run at 49 games between 2003 and 2004, receiving the nickname The Invincibles.

                In 2006, the club moved to the nearby Emirates Stadium. With an annual revenue of £367.1m in the 2021–22 season, Arsenal was estimated to be worth US$2.26 billion by Forbes, making it the world's tenth most valuable football club, while it is one of the most followed on social media. The motto of the club is Victoria Concordia Crescit, Latin for "Victory Through Harmony".
                """,
                logoIsRound: false
            ),
            Team(
                name: "Tottenham",
                logoImageName: "tottenham",
                stadiumImageName: "tottenham-stadium",
                description: """
                Tottenham Hotspur Football Club, commonly referred to as simply Tottenham (/ˈtɒtənəm/) or Spurs, is a professional football club based in Tottenham, London, England. It competes in the Premier League, the top flight of English football. The team has played its home matches in the 62,850-capacity Tottenham Hotspur Stadium since April 2019, replacing their former home of White Hart Lane, which had been demolished to make way for the new stadium on the same site.

                Founded in 1882, Tottenham's emblem is a cockerel standing upon a football, with the Latin motto Audere est Facere ("to dare is to do"). The club has traditionally worn white shirts and navy blue shorts as their home kit since the 1898–99 season. Their training ground is on Hotspur Way in Bulls Cross, Enfield. After its inception, Tottenham won the FA Cup for the first time in 1901, the only non-League club to do so since the formation of the Football League in 1888. Tottenham were the first club in the 20th century to achieve the League and FA Cup Double, winning both competitions in the 1960–61 season. After successfully defending the FA Cup in 1962, in 1963 they became the first British club to win a UEFA club competition – the European Cup Winners' Cup. They were also the inaugural winners of the UEFA Cup in 1972, becoming the first British club to win two different major European trophies. They collected at least one major trophy in each of the six decades from the 1950s to 2000s, an achievement only matched by Manchester United.

                In domestic football, Spurs have won two league titles, eight FA Cups, four League Cups, and seven FA Community Shields. In European football, they have won one European Cup Winners' Cup and two UEFA Cups. Tottenham were also runners-up in the 2018–19 UEFA Champions League. They have a long-standing rivalry with nearby club Arsenal, with whom they contest the North London derby. Tottenham is owned by ENIC Group, which purchased the club in 2001. The club was estimated to be worth £1.9 billion ($2.35 billion) in 2022, and it was the ninth-highest-earning football club in the world, with an annual revenue of £442.8 million in 2022.
                """
            ),
            Team(
                name: "West Ham",
                logoImageName: "west-ham",
                stadiumImageName: "west-ham-stadium",
                description: """
                West Ham United Football Club is an English professional football club that plays its home matches in Stratford, East London. The club competes in the Premier League, the top tier of English football. The club plays at the London Stadium, having moved from their former home, the Boleyn Ground, in 2016.

                West Ham United was founded in 1895 as Thames Ironworks and reformed in 1900 as West Ham United. It moved to the Boleyn Ground, which remained its home ground for more than a century, in 1904. The team initially competed in the Southern League and Western League before joining the Football League in 1919. It was promoted to the top flight in 1923, when it was also losing finalist in the first FA Cup final held at Wembley. In 1940, the club won the inaugural Football League War Cup.

                West Ham United has won five major honours in its history. Domestically, it has been winner of the FA Cup three times (1964, 1975 and 1980) and runner-up twice (1923 and 2006). In European competitions, the club has reached three major European finals winning the European Cup Winners' Cup in 1965, finishing runner-up in the same competitions in 1976, and winning the second edition of the Europa Conference League in 2023. The club has also won one minor European trophy by winning the Intertoto Cup in 1999. West Ham United is one of eight club never to have fallen below the second tier of English football, spending 66 of 98 league seasons in the top flight, up to and including the 2023–24 season. The club's highest league position to date came in 1985–86, when it achieved third place in the then First Division.

                Three West Ham players were members of the 1966 World Cup finals-winning England team: captain Bobby Moore and goalscorers Geoff Hurst and Martin Peters. The club has a long-standing rivalry with Millwall, and the fixture has gained notoriety for frequent incidents of football hooliganism. West Ham adopted their claret and sky blue colour scheme in the early 1900s, with the most common iteration of a claret shirt and sky blue sleeves first emerging in 1904.
                """,
                logoIsRound: false
            ),
            Team(
                name: "Brighton",
                logoImageName: "brighton",
                stadiumImageName: "brighton-stadium",
                description: """
                Brighton & Hove Albion Football Club (/ˈbraɪtən ... ˈhoʊv/ BRY-tən … HOHV), commonly referred to simply as Brighton, is an English professional football club based in the city of Brighton and Hove. They compete in the Premier League, the top tier of the English football league system. The club's home ground is the 31,876-capacity Falmer Stadium in Falmer, in the north east of Brighton.

                Founded in 1901 and nicknamed the "Seagulls" or "Albion", Brighton played their early professional football in the Southern League, before being elected to the Football League in 1920. Prior to the current, continuing stint in the Premier League, the club enjoyed greatest prominence between 1979 and 1983 when they played in the First Division and reached the 1983 FA Cup final, losing to Manchester United after a replay. They were relegated from the First Division in the same season.

                By the late 1990s, Brighton were in the fourth tier of English football and were having financial difficulties. After narrowly avoiding relegation from the Football League to the Conference in 1997, a boardroom takeover saved the club from liquidation. Successive promotions in 2001 and 2002 brought Brighton back to the second tier, and in 2011, the club moved into the Falmer Stadium after 14 years without a permanent home ground. In the 2016–17 season, Brighton finished second in the EFL Championship and were thus promoted to the Premier League, ending a 34-year absence from the top flight. In the 2022–23 season, Brighton finished sixth in the Premier League, their highest top flight finish ever, and qualified for the UEFA Europa League; this is their first participation in European football.
                """
            ),
            Team(
                name: "Manchester United",
                logoImageName: "manchester-united",
                stadiumImageName: "manchester-united-stadium",
                description: """
                Manchester United Football Club, commonly referred to as Man United (often stylised as Man Utd), or simply United, is a professional football club based in Old Trafford, Greater Manchester, England. The club competes in the Premier League, the top division in the English football league system. Nicknamed the Red Devils, they were founded as Newton Heath LYR Football Club in 1878, but changed their name to Manchester United in 1902. After a spell playing in Clayton, Manchester, the club moved to their current stadium, Old Trafford, in 1910.

                Domestically, Manchester United have won a record 20 top-flight league titles, 12 FA Cups, six League Cups and a record 21 FA Community Shields. In international football, they have won the European Cup/UEFA Champions League three times, and the UEFA Europa League, the UEFA Cup Winners' Cup, the UEFA Super Cup, the Intercontinental Cup and the FIFA Club World Cup once each. In 1968, under the management of Matt Busby, 10 years after eight of the club's players were killed in the Munich air disaster, they became the first English club to win the European Cup. Sir Alex Ferguson is the club's longest-serving and most successful manager, winning 38 trophies, including 13 league titles, five FA Cups, and two Champions League titles between 1986 and 2013. In the 1998–99 season, under Ferguson, the club became the first in the history of English football to achieve the continental treble of the Premier League, FA Cup and UEFA Champions League. In winning the UEFA Europa League under José Mourinho in 2016–17, they became one of five clubs to have won the original three main UEFA club competitions (the Champions League, Europa League and Cup Winners' Cup).

                Manchester United are one of the most widely supported football clubs in the world and have rivalries with Liverpool, Manchester City, Arsenal and Leeds United. Manchester United was the highest-earning football club in the world for 2016–17, with an annual revenue of €676.3 million, and the world's third-most-valuable football club in 2019, valued at £3.15 billion ($3.81 billion). After being floated on the London Stock Exchange in 1991, the club was taken private in 2005 after a purchase by American businessman Malcolm Glazer valued at almost £800 million, of which over £500 million of borrowed money became the club's debt. From 2012, some shares of the club were listed on the New York Stock Exchange, although the Glazer family retains overall ownership and control of the club.
                """
            ),
            Team(
                name: "Newcastle",
                logoImageName: "newcastle",
                stadiumImageName: "newcastle-stadium",
                description: """
                Newcastle United Football Club is a professional association football club based in Newcastle upon Tyne, Tyne and Wear, England. The team compete in the Premier League, the first level of the English football league system, as of the 2023–24 season. Since the formation of the club in 1892, when Newcastle East End absorbed the assets of Newcastle West End to become Newcastle United, the club has played its home matches at St James' Park. Located in the centre of Newcastle, it currently has a capacity of 52,305.

                The club has been a member of the Premier League for all but three years of the competition's history, spending 91 seasons in the top flight as of May 2023, and has never dropped below English football's second tier since joining the Football League in 1893. Newcastle have won four League titles, six FA Cups and an FA Charity Shield, as well as the 1968–69 Inter-Cities Fairs Cup, the ninth-highest total of trophies won by an English club. The club's most successful period was between 1904 and 1910, when they won an FA Cup and three of their League titles. Their last major domestic trophy was in 1955. More recently the club have been League or FA Cup runners-up on four occasions in the 1990s. Newcastle were relegated in 2009, and again in 2016. The club won promotion at the first time of asking each time, returning to the Premier League, as Championship winners, in 2010 and 2017. In October 2021, a consortium led by the Public Investment Fund, the sovereign wealth fund of Saudi Arabia, became the owners of Newcastle United.

                The team's traditional kit colours are black-and-white striped shirts, black shorts and black or white socks. Their crest has elements of the city coat of arms, which features two grey hippocamps. Before each home game, the team enters the field to "Going Home", with "Blaydon Races" also being sung during games. The 2005 film Goal! featured Newcastle United, and many signings mentioned the influence the film had on them.
                """
            ),
            Team(
                name: "Chelsea",
                logoImageName: "chelsea",
                stadiumImageName: "chelsea-stadium",
                description: """
                Chelsea Football Club is an English professional football club based in Fulham, West London. Founded in 1905, the team play their home games at Stamford Bridge. The club competes in the Premier League, the top division of English football. It won its first major honour, the League championship, in 1955. The club won the FA Cup for the first time in 1970, their first European honour, the Cup Winners' Cup, in 1971, and became the third English club to win the Club World Cup in 2022.

                Chelsea is one of five clubs to have won all three pre-1999 main European club competitions, and the only club to have won all three major European competitions twice. They are also the only London club to have won the Champions League and the Club World Cup. Domestically, the club has won six league titles, eight FA Cups, five League Cups, and four FA Community Shields. Internationally, they have won the UEFA Champions League, the UEFA Europa League, the UEFA Cup Winners' Cup and the UEFA Super Cup twice each, and the FIFA Club World Cup once since their inception. In terms of overall trophies won, Chelsea is the fourth-most successful club in English football.

                The club has rivalries with neighbouring teams Arsenal and Tottenham Hotspur, and a historic rivalry with Leeds United. In terms of club value, Chelsea is the eighth-most-valuable football club in the world (as of 2022), worth $3.10 billion, and is the eighth-highest-earning football club in the world.
                """
            ),
            Team(
                name: "Wolverhampton",
                logoImageName: "wolverhampton",
                stadiumImageName: "wolverhampton-stadium",
                description: """
                Wolverhampton (/ˌwʊlvərˈhæmptən/ ⓘ) is a city and metropolitan borough in the West Midlands, England. The population was 263,700 in 2021. People from the city are called "Wulfrunians". The city is located 12 miles (19 km) north-west of Birmingham.

                Historically in Staffordshire, the city grew as a market town specialising in the wool trade. In the Industrial Revolution, it became a major centre for coal mining, steel production, lock making, and the manufacture of cars and motorcycles. The economy of the city is still based on engineering, including a large aerospace industry, as well as the service sector.
                """
            ),
            Team(
                name: "Bournemouth",
                logoImageName: "bournemouth",
                stadiumImageName: "bournemouth-stadium",
                description: """
                AFC Bournemouth (/ˈbɔːrnməθ/ ⓘ BORN-məth) is a professional association football club based in Kings Park, Boscombe, a suburb of Bournemouth, Dorset, England. The club competes in the Premier League, the highest division of English club football. Formed in 1899 as Boscombe, the club adopted their current name in 1971. Nicknamed "The Cherries", Bournemouth have played their home games at Dean Court since 1910. Their home colours are red-and-black striped shirts which have been a tradition dating back to the club's establishment.

                The club competed in regional football leagues before going up from the Hampshire League to the Southern League in 1920. Now known as Bournemouth & Boscombe Athletic, they were elected into the Football League in 1923. They remained in the Third Division South for 35 years, winning the Third Division South Cup in 1946. Placed in the newly reorganised Third Division in 1958, they suffered relegation in 1970, but would win an immediate promotion in 1970–71. Relegated back into the Fourth Division in 1975, Bournemouth were promoted again in 1981–82 and after lifting the Associate Members' Cup in 1984 would go on to win the Third Division title in 1986–87. They spent three seasons in the second tier but entered administration in 1997 and ended up back in the fourth tier with relegation in 2002, though immediately gained promotion by winning the play-offs in 2003.

                Bournemouth entered administration for a second time and were relegated back into League Two in 2008, but ended the year by appointing Eddie Howe as manager. Under Howe's stewardship, Bournemouth won three promotions in six years to win a place in the first tier of English football for the first time in their history. This was achieved with a second-place finish in League Two in 2009–10, a second-place finish in League One in 2012–13 and a Championship title in 2014–15. The club remained in the Premier League for five seasons before suffering relegation in 2020, but they returned in 2022 as Championship runners-up, this time under the management of Scott Parker.
                """,
                logoIsRound: false
            ),
            Team(
                name: "Fulham",
                logoImageName: "fulham",
                stadiumImageName: "fulham-stadium",
                description: """
                Fulham Football Club is a professional football club based in Fulham, Greater London, England. The team competes in the Premier League, the top level of the English football league system. They have played home games at Craven Cottage since 1896, other than a two-year period spent at Loftus Road whilst Craven Cottage underwent redevelopments that were completed in 2004. They contest West London derby rivalries with Chelsea, Queens Park Rangers and Brentford. The club adopted a white shirt and black shorts as its kit in 1903, which has been used ever since.

                Founded in 1879, they are London's oldest professional football club. They joined the Southern League in 1898 and won two First Division titles (1905–06 and 1906–07), as well as two Second Division titles and a Western League title. Elected into the Second Division of the Football League in 1907, Fulham would win the Third Division South in 1931–32, four years after being relegated. They won the Second Division title in 1948–49, though were relegated after three seasons. Promoted back to the First Division again in 1958–59, the form of star player Johnny Haynes helped Fulham to remain in the top-flight until consecutive relegations occurred by 1969. They were promoted in 1970–71 and went on to reach the final of the 1974–75 FA Cup.

                Fulham drifted between the second and fourth tiers until being taken over by Mohamed Al-Fayed in 1997. They went on to win two divisional titles in three seasons to reach the Premier League by 2001. They won the UEFA Intertoto Cup in 2002 and were beaten in the 2010 final of the UEFA Europa League. However, thirteen consecutive seasons in the top-flight culminated in relegation in 2014. Since that time, the club have moved between the first and second tiers under new owner Shahid Khan. Fulham had changed divisions in five successive seasons between 2017–18 to 2021–22, being relegated after winning the 2018 and 2020 EFL Championship play-off finals. They then won the 2021–22 EFL Championship title, finally settling in the Premier League, where they have played since 2022.
                """,
                logoIsRound: false
            ),
            Team(
                name: "Crystal Palace",
                logoImageName: "crystal-palace",
                stadiumImageName: "crystal-palace-stadium",
                description: """
                Crystal Palace Football Club, commonly referred to as Palace, is a professional football club based in Selhurst in the Borough of Croydon, South London, England, which competes in the Premier League, the highest level of English football. Although formally created as a professional outfit in 1905 at the Crystal Palace Exhibition building, the club claim their foundation date to be as far back as 1861, after a disputed lineage was found to an amateur Crystal Palace football team who first played on a cricket pitch inside the Palace grounds. The club used the FA Cup final stadium situated inside the grounds of the Palace for their home games between 1905 and 1915, when they were forced to leave due to the outbreak of the First World War. In 1924, they moved to their current home at Selhurst Park.

                The amateur club became one of the original founder members of the Football Association in 1863, and competed in the first ever FA Cup competition in 1871–72, but disappeared from historical records around 1876. Crystal Palace returned to existence as a professional outfit in 1905, initially playing in the Southern League. They joined the Football League in 1920, and have overall mainly competed in the top two tiers of English football. Since 1964, Palace have only dropped below the second tier once, for three seasons between 1974 and 1977. During their period in the top flight in the late 1980s and early 1990s, the club achieved their highest ever league finish of third place in the old First Division, now known as the Premier League, in the 1990–91 season. Palace were unfortunate to miss out on qualification for the UEFA Cup at the end of that season due to the limited number of European places available to English clubs after the lifting of the UEFA ban caused by the Heysel Stadium disaster. It was also during this period that Palace reached the 1990 FA Cup final, losing to Manchester United after a replay, and they became founder members of the Premier League in 1992.

                Following their relegation from the Premier League in 1998, Palace went into decline after suffering financial problems which resulted in the club going into administration twice in 1999 and 2010, but they recovered and returned to the Premier League in 2013 where they have remained ever since, and reached another FA Cup final in 2016, again finishing runners-up to Manchester United.

                The club's kit colours were claret and blue until 1973, when they changed to the red and blue vertical stripes worn today. Palace have a long-standing and fierce rivalry with Brighton & Hove Albion, and also share strong rivalries with fellow South London clubs Millwall and Charlton Athletic.
                """
            ),
            Team(
                name: "Nottingham Forest",
                logoImageName: "nottingham-forest",
                stadiumImageName: "nottingham-stadium",
                description: """
                Nottingham Forest Football Club is a professional association football based in West Bridgford, Nottingham, England. The team competes in the Premier League, the first level of the English football league system.

                Founded in 1865, Forest have played their home games at the City Ground since 1898. Nottingham Forest have won two European Cups (now the UEFA Champions League), being one of six English clubs to have won the European Cup. They have also won one UEFA Super Cup, one League title, two FA Cups, four League Cups, and one FA Charity Shield. The club has competed in the top two tiers of English football since its admission to the Football League, with the exception of five seasons in the third tier. Its most successful period was under the management of Brian Clough and Peter Taylor in the late 1970s and early 1980s, which included back-to-back wins in the then European Cup in 1979 and 1980.

                In Clough's last decade at the club, the Nottingham Forest team won the 1989 and 1990 League Cups and were losing finalists in the 1991 FA Cup final and 1992 League Cup final, before relegation from the Premier League in 1993. Upon an immediate return, Forest finished third in the Premier League in 1995 before again suffering relegation from the top flight in 1997 and 1999. The team returned to the Premier League by winning the play-offs in 2022.

                Forest's fiercest rivalry is with Derby County, with which club it contests an East Midlands derby. The two clubs have met a total of 109 times, with Forest claiming the most victories (43), the longest win streak (5), and the longest unbeaten run (10) which runs from 11 March 2018 to the present day. In 2007 the Brian Clough Trophy was founded, which has since then been given to the winner of this East Midlands Derby.
                """
            ),
            Team(
                name: "Brentford",
                logoImageName: "brentford",
                stadiumImageName: "brentford-stadium",
                description: """
                Brentford Football Club is a professional association football club in Brentford, West London, England. The team compete in the Premier League, the first level of the English football league system.

                Nicknamed "The Bees", the club was founded in 1889 and played home matches at Griffin Park from 1904 before moving to the Gtech Community Stadium in 2020. Brentford initially played amateur football before they entered the London League in 1896 and finished as runners-up of the Second Division and then the First Division to win election into the Southern League in 1898. They won the Southern League Second Division in 1900–01 and were elected into the Football League in 1920. Brentford won the Third Division South title in 1932–33 and the Second Division title in 1934–35. The club enjoyed a successful spell in the top flight of English football, reaching a peak of fifth in the First Division, in 1935–36, their highest ever league finish, before three relegations left them in the Fourth Division by 1962. They were crowned Fourth Division champions in 1962–63, but were relegated in 1966 and again in 1973 after gaining promotion in 1971–72. Brentford spent 14 seasons in the Third Division after gaining promotion in 1977–78 and went on to win the Third Division title in 1991–92, though were relegated again in 1993.

                Brentford were relegated into the fourth tier in 1998 and won promotion as champions in the 1998–99 campaign. The club were relegated in 2007 and won promotion as champions of League Two in 2008–09 and then were promoted out of League One in 2013–14. They had unsuccessful Championship play-off campaigns in 2015 and 2020. Brentford have a poor record in finals, finishing as runners-up in three Associate Members' Cup/Football League Trophy finals (1985, 2001 and 2011) and losing four play-off finals (the 1997 Second Division final, 2002 Second Division final, 2013 League One final and 2020 Championship final). However, Brentford won the 2021 Championship final to be promoted to the highest level for the first time since the 1946–47 season. Their main rivals are fellow West London-based clubs Fulham and Queens Park Rangers. They are affiliated with the women's club Brentford Women.
                """
            ),
            Team(
                name: "Everton",
                logoImageName: "everton",
                stadiumImageName: "everton-stadium",
                description: """
                Everton Football Club (/ˈɛvərtən/) is an English professional association football club based in Liverpool that competes in the Premier League, the top tier of English football. The club was a founder member of the Football League in 1888, and has, as of August 2023, competed in the top division for a record 121 seasons, having missed only four top-flight seasons (1930–31, 1951–52, 1952–53, and 1953–54). Everton is the club with the second-longest continuous presence in English top-flight football, and ranks third in the all-time points rankings. The club has won nine league titles, five FA Cups, one European Cup Winners' Cup and nine Charity Shields.

                Formed in 1878, Everton won their first League Championship during the 1890–91 season. After winning four more League championships and two FA Cups, the club experienced a post-Second World War lull until a revival in the 1960s. A period of sustained success came in the mid-1980s, when Everton won a further two League championships, one FA Cup, and the 1985 European Cup Winners' Cup. The club's most recent major trophy was the 1995 FA Cup.

                The club's supporters are colloquially known as "Evertonians" or "Blues". Everton's main rivals are Liverpool, whose home stadium at Anfield is just under one mile away from Everton's home at Goodison Park; the two clubs contest the Merseyside derby. Everton have been based at Goodison Park since 1892, having moved from their original home at Anfield following a disagreement over their rent. The club's home colours are royal blue shirts with white shorts and socks.
                """
            ),
            Team(
                name: "Luton",
                logoImageName: "luton",
                stadiumImageName: "luton-stadium",
                description: """
                Luton Town Football Club (/ˈluːtən/) is a professional football club based in Luton, Bedfordshire, England, that competes in the Premier League, the top tier of English football. Founded in 1885, they are nicknamed the Hatters, due to the historical association of the town with the hat making trade, and have played home matches at Kenilworth Road since 1905. The club's history includes one major trophy win, several financial crises, as well as numerous promotions and relegations. Between 1982 and 1992, they were a member of the First Division; they won their first major honour, the Football League Cup, in 1988. Luton Town have a long-standing rivalry with nearby club Watford.

                Luton Town was the first in southern England to turn professional. It joined the Football League before the 1897–98 season, left in 1900 because of financial problems, and rejoined in 1920. Luton reached the First Division in 1955–56 and contested a major final for the first time against Nottingham Forest in the 1959 FA Cup final. The team was then relegated from the top division in 1959–60, and demoted twice more in the following five years, playing in the Fourth Division from the 1965–66 season, before they were promoted back to the top level in 1974–75.

                In 1981–82, the club won the Second Division and gained promotion to the First. Luton defeated Arsenal 3–2 in the 1988 Football League Cup final and remained in the First Division until relegation at the end of the 1991–92 season. Between 2007 and 2009, financial difficulties caused the club to fall from the second tier of English football to the fifth in successive seasons. The last of these relegations, in the 2008–09 season, followed a 30-point deduction for financial irregularities. Luton spent five seasons in non-League football before winning the Conference Premier in 2013–14, securing promotion back into the Football League. Luton were promoted from League Two and League One in successive seasons in 2017–18 and 2018–19 before being promoted to the Premier League in the 2022–23 EFL Championship play-off final on penalties against Coventry City.

                Luton Town are the first football team to return to the top tier of English football after successive relegations down to the fifth tier of English football.
                """
            ),
            Team(
                name: "Burnley",
                logoImageName: "burnley",
                stadiumImageName: "burnley-stadium",
                description: """
                Burnley Football Club (/ˈbɜːrnli/) is an English association football club based in Burnley, Lancashire, that competes in the Premier League, the first tier of English football. Founded on 18 May 1882, the club was one of the first to become professional (in 1883) and subsequently put pressure on the Football Association to permit payments to players. The club entered the FA Cup for the first time in 1885–86 and was one of the 12 founder members of the Football League in 1888–89. From the 1950s until the 1970s, under chairman Bob Lord, the club became renowned for its youth policy and scouting system, and was one of the first to set up a purpose-built training ground.

                Burnley have been champions of England twice, in 1920–21 and 1959–60, have won the FA Cup once, in 1913–14, and have won the FA Charity Shield twice, in 1960 and 1973. They have been runners-up in the First Division twice, in 1919–20 and 1961–62, and FA Cup runners-up twice, in 1946–47 and 1961–62. Burnley are one of only five sides to have won all four professional divisions of English football, along with Wolverhampton Wanderers, Preston North End, Sheffield United and Portsmouth. During the 1920–21 season, Burnley embarked on a 30-match unbeaten league run, setting an English record.[a] When the team won the 1959–60 Football League, the town of Burnley—with 80,000 inhabitants—became one of the smallest to have an English first-tier champion.[b]

                The team have played home games at Turf Moor since 1883, after they had moved from their original premises at Calder Vale. The club colours of claret and blue were adopted before the 1910–11 season in tribute to the then Football League champions Aston Villa. The club is nicknamed "the Clarets" because of the dominant colour of its home shirts. Burnley's current emblem is based on the town's coat of arms. The team have a long-standing rivalry with nearby club Blackburn Rovers, with whom they contest the East Lancashire Derby.
                """,
                logoIsRound: false
            ),
            Team(
                name: "Sheffield",
                logoImageName: "sheffield",
                stadiumImageName: "sheffield-stadium",
                description: """
                Sheffield United Football Club is a professional football club in Sheffield, South Yorkshire, England, that competes in the Premier League, following their promotion from the 2022–23 EFL Championship. They are nicknamed "the Blades" due to Sheffield's history of cutlery production. The team have played home games at Bramall Lane since their formation. For most of the club's history, United have played in red and white striped shirts with black shorts. Their main rivals are Sheffield Wednesday, with whom they contest the Steel City derby.

                Sheffield United was formed as an offshoot of Sheffield United Cricket Club in 1889. Following strong performances in the Midland League and Northern League, they were invited to become founder members of the Football League Second Division in 1892. They won promotion to the First Division at the end of the 1892–93 season, the first team to do so, and went on to be crowned English football champions in 1897–98. United went on to win the FA Cup on four occasions: 1899, 1902, 1915 and 1925; and were beaten finalists in 1901. They spent 41 years in the top-flight before being relegated in 1934. United finished as FA Cup runners-up in 1936 and were promoted as runners-up of the Second Division in 1938–39.

                United won the Second Division title in 1952–53, following relegation in 1949. They spent the next three decades between the First and Second Divisions, winning promotions in 1960–61 and 1970–71 after relegations in 1956 and 1968. However, a slow decline saw the club drop to the fourth tier by 1982, though they would win an immediate promotion as Fourth Division champions in 1981–82; this achievement meant that Sheffield United are one of only five sides to have won all four professional divisions of English football. Promoted in 1983–84, they recovered from relegation in 1988 to win consecutive promotions into the top-flight at the end of the 1989–90 campaign.

                Sheffield United were founder members of the Premier League in the 1992–93 season, during which they scored the first ever goal of the competition. They were relegated in 1994 and after losing play-off finals in 1997 and 2003, the club finally regained their Premier League status at the end of the 2005–06 campaign under the stewardship of manager Neil Warnock. However, United were relegated the following year and dropped into League One in 2011. They spent six seasons in the third tier, losing in three play-offs campaigns, before manager Chris Wilder led the club to promotion as champions in 2016–17. Promotion to the Premier League followed in 2018–19, though they returned to the Championship in 2021. The club will again play in the Premier League in 2023–24.
                """
            ),
        ]
    }
}

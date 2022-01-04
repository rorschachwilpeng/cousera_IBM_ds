/*Task1: Display the names of the unique launch sites in the space mission*/
/* select DISTINCT launch_site from Spacex */

/*Task2: Display 5 records where launch sites begin with the string 'CCA'*/
/*SELECT * from Spacex where launch_site like "CCA%" limit 5 */

/*Task3: Display the total payload mass carried by boosters launched by NASA (CRS) */
/* select * from Spacex where Customer like "NASA (CRS)" */

/*Task4:Display average payload mass carried by booster version F9 v1.1 */
/*SELECT avg(payload_mass__kg_) from Spacex where booster_version = 'F9 v1.1' */

/*Task5: List the date when the first successful landing outcome in ground pad was acheived.*/
/* SELECT date from Spacex where landing__outcome = 'Success (ground pad)' LIMIT 1 */

/*Task6: List the names of the boosters which have success in drone ship and have payload mass greater than 4000 but less than 6000 */
/* select booster_version from Spacex WHERE landing__outcome ="Success (drone ship)" and payload_mass__kg_ BETWEEN 4000 and 6000 */

/*Task7:  List the total number of successful and failure mission outcomes */
/* SELECT COUNT(mission_outcome) as MISSION_OUTCOME from Spacex GROUP by mission_outcome */

/*Task8: List the   names of the booster_versions which have carried the maximum payload mass. Use a subquery */
/*SELECT booster_version from Spacex where payload_mass__kg_ = (SELECT max(payload_mass__kg_) from Spacex);*/

/*Task9:  List the failed landing_outcomes in drone ship, their booster versions, and launch site names for in year 2015*/
/*SELECT MONTH(DATE),MISSION_OUTCOME,BOOSTER_VERSION,LAUNCH_SITE FROM Spacex where EXTRACT(YEAR FROM DATE)="2015"*/

/*Task10: Rank the count of landing outcomes (such as Failure (drone ship) or Success (ground pad)) between the date 2010-06-04 and 2017-03-20, in descending order*/
SELECT LANDING__OUTCOME FROM SPACEXTBL WHERE DATE BETWEEN '2010-06-04' AND '2017-03-20' ORDER BY DATE DESC;
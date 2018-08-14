<style>

body{
	margin: 0; 
	padding: 0;
}

/* Wallpaper page accueil */
.body-login {
    background-image: url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRafuufcVhmXLCRBrFqGq5XUCaKuOCNRprXoTqSHDIh_TRxCWDHsQ);
	position: fixed;
	left: 0;
	top: 12%;
    background-repeat: no-repeat;
    background-size: cover;
    height: 100%;
    width: 100%;
    margin: 0;

}

/* Wallpaper page utilisateur */
.img {
	position: fixed;
    left: 0;
    top: 0;
    background-image: url(https://www.setaswall.com/wp-content/uploads/2017/06/Blur-Wallpapers-24-2560-x-1600.jpg);
    background-repeat: no-repeat;
    background-size: cover;
    height: 100%;
    width: 100%;
    margin: 0;
 }
 
 /*---T I T R E S-----------------------------------------------------------------------------------*/
 .h1-login {
 
 	background-color: #ff8f00;
    text-align: center;
    border: #fbfbfb solid 4px;
    font-family: 'Montserrat', Arial, Helvetica, sans-serif;
    width: 100%;
    border: #fbfbfb solid 4px;
    color: white;
    font-size: 24px;
    padding-top: 15px;
    padding-bottom: 15px;
    margin-top: -44px;
    font-weight: 700;
    position: relative;
    top: -15px;

 }
 
 .h1-inscription {
	background-color: #7e5e2c;
    text-align: center;
    border: #fbfbfb solid 4px;
    font-family: 'Montserrat', Arial, Helvetica, sans-serif;
    width: 100%;
    border: #fbfbfb solid 4px;
    color: white;
    font-size: 24px;
    padding-top: 15px;
    padding-bottom: 15px;
    margin-top: -44px;
    font-weight: 700;
    position: relative;
    top: -15px;
 }

.h1-admin {
    font-family: 'Montserrat', Arial, Helvetica, sans-serif;
 	font-size: 26px;
	text-align: center;
}

 /*--- I N P U T S // T E X T A R E A // S E L E C T(...)-----------------------------------------------------------------------------------*/

input[type=text], input[type=password] {
	color: #3c3c3c;
    font-family: 'Montserrat', Arial, Helvetica, sans-serif;
    font-weight: 500;
    font-size: 25px;
    line-height: 22px;
    background-color: #fbfbfb;
    padding: 8px 13px 9px 35px;
    width: 100%;
    box-sizing: border-box;
    border: 3px solid rgba(0,0,0,0);

}

input[type=submit] {
    font-family: 'Montserrat', Arial, Helvetica, sans-serif;
    float: left;
    width: 100%;
    border: #fbfbfb solid 4px;
    cursor: pointer;
    background-color: #75a787;
    color: white;
    font-size: 24px;
    padding-top: 15px;
    padding-bottom: 15px;
    transition: all 0.3s;
    margin-top: -30px;
    font-weight: 700;
}

input[type=reset] {
    font-family: 'Montserrat', Arial, Helvetica, sans-serif;
    float: left;
    width: 100%;
    border: #fbfbfb solid 4px;
    background-color: #117052;;
    cursor: pointer;
    color: white;
    font-size: 24px;
    padding-top: 15px;
    padding-bottom: 15px;
    transition: all 0.3s;
    margin-top: -4px;
    font-weight: 700;
}

input[type=text].rep {
	height: 30px;
    width: 200px;
    font-family: 'Montserrat', Arial, Helvetica, sans-serif;
    font-size: 17px;
    border: none;
    border-bottom: 1px solid grey;
    margin-left: 20px;
    margin: 14px;
}

input[type=submit].submit-tab {
    font-family: 'Montserrat', Arial, Helvetica, sans-serif;
    float: right;
    width: 5.5%;
    border: #ccc1c1 solid 3px;
    cursor: pointer;
    background-color: #75a787;
    color: white;
    font-size: 18px;
    padding-top: 10px;
    padding-bottom: 10px;
    transition: all 0.3s;
    font-weight: 700;
	margin-top: 0px;
}

input[type=submit].submit-modifier-compet {
	color:white;
	background-color:#7e5e2c;
	border: #ccc1c1 solid 3px;
	width: 6.4%;
	padding-top:10px;
	padding-bottom:10px;
	margin-top: 13px;
	font-size: 18px;
	float:right;
}


input[type=submit].submit-supp-compet {
	color:white;
	width: 6.9%;
	padding-top:10px;
	padding-bottom:10px;
	border: #ccc1c1 solid 3px;
	font-size: 18px;
	background-color:#bd0303;
	margin-top: 13px;
	margin-right: -3px;
	float:right;
}


input[type=submit].submit-supp-admin {
	color:white;
	width: 6.7%;
	padding-top:10px;
	padding-bottom:10px;
	border: #ccc1c1 solid 3px;
	font-size: 18px;
	background-color:#bd0303;
	margin-top: 0px;	
	float:right;
}

input[type=submit].submit-quest{
	width: 16.8%;
    border: #ccc1c1 solid 3px;
    cursor: pointer;
    background-color: #75a787;
    color: white;
    font-size: 21px;
    padding-top: 10px;
    padding-bottom: 10px;
    margin-top: 17px;
    margin-left: 43%;
}


input[type=submit].sub-quizz {
    font-family: 'Montserrat', Arial, Helvetica, sans-serif;
    float: right;
    width: 5.1%;
    margin-right: 13.2%;
    border: #ccc1c1 solid 3px;
    background-color: #75a787;
    color: white;
    font-size: 18px;
    padding-top: 10px;
    padding-bottom: 10px;
    margin-top: 13px;
}

input[type=submit].sub-compet {
	font-family: 'Montserrat', Arial, Helvetica, sans-serif;
    border: #ccc1c1 solid 3px;
    background-color: #75a787;
    color: white;
    font-size: 18px;
    padding-top: 5px;
    padding-bottom: 5px;
    width: 6%;
    position: absolute;
    right: 36%;
    top: 26.3%;
    height: 40px;
}

input[type=submit].sub-parcours-sujet {
	border: #ccc1c1 solid 3px;
    width: 8%;
    height: 38px;
    padding-bottom: 5px;
    padding-top: 5px;
    font-size: 18px;
    float: right;
    position: absolute;
    bottom: 78%;
    right: 46.8%;
}

input[type=submit].sub-parcours-intituleQuizz {
    border: #ccc1c1 solid 3px;
    width: 8%;
    height: 38px;
    padding-bottom: 5px;
    padding-top: 5px;
    font-size: 18px;
    float: right;
    position: absolute;
    bottom: 6%;
    right: 46.8%;
}

input[type=text].intitule{
    font-family: 'Montserrat', Arial, Helvetica, sans-serif;
	font-size: 20px;
	border: none;
	border-bottom: 2px solid grey;
	width:20%;
    margin: 4% 41%;
    color:#083510;
}

::placeholder {
	color:green;
	font-style:italic;
}

/* Textarea de la page compétences */
textarea {
	margin-left: 42%;
    margin-top: -1%;
    margin-bottom: 4%;
    font-size:15px;
    font-family: 'Montserrat', Arial, Helvetica, sans-serif;
    color:#083510;
}

/* Page parcours*/
.select-parcours {
    height: 32px;
    font-size: 17px;
    color: #355351;
    font-family: 'Montserrat', Arial, Helvetica, sans-serif;
    margin-left: 42%;
    margin-top: 3%;
	margin: 4% 43% 5%;
}

 /*---D I V-----------------------------------------------------------------------------------*/

/* Page utilisateur  */
.div-form-inscription {
	background-color: rgba(72, 72, 72, 0.54);
    box-shadow: 0px 0px 20px 4px #211f1f;
    padding-left: 35px;
    padding-right: 35px;
    padding-top: 35px;
    padding-bottom: 50px;
    width: 450px;
    float: left;
    left: 50%;
    position: absolute;
    margin-top: 77px;
    margin-left: -260px;
    border-radius: 7px;
  
}

/* Page accueil */
.div-form-login {
	background-color:rgba(72, 72, 72, 0.54);
	box-shadow: 0px 0px 13px 4px #333333;
	padding-left:35px;
	padding-right:35px;
	padding-top:35px;
	padding-bottom:50px;
	width: 450px;
	float: left;
	left: 50%;
	position: absolute;
 	margin-top:30px;
	margin-left: -260px;
  	border-radius: 7px;


}

.div-tab-quest, .div-tab-quizz, .div-tab-parcours {
    margin-top: 1%;
}

 /*---T A B L E A U X-----------------------------------------------------------------------------------*/

table {
	border: thin solid #009688;
	border-collapse: collapse;
	margin:auto;
}

table.tab-quest {
	border:none;
}

th {
  font-family: 'Montserrat', Arial, Helvetica, sans-serif;
  background-color: #b7ffb7;
  font-size: 17px;
}

th.rep-th{
    background-color:inherit;
}

td {
  font-family: 'Montserrat', Arial, Helvetica, sans-serif;
  font-size: 16px;
}

td.rep-td {
    font-family: 'Montserrat', Arial, Helvetica, sans-serif;
    font-size: 14px;
}

 /*---F I E L D S E T // L E G E N D-----------------------------------------------------------------------------------*/

fieldset{
	margin: auto;
	border:none;
	border-top:1px solid black;

}


legend{
	font-family: 'Montserrat', Arial, Helvetica, sans-serif;
	text-align: center;

} 

 /*---L I E N S-----------------------------------------------------------------------------------*/

/* Page accueil : "Nouvelle inscription"" */
.href-login {
    font-family: 'Montserrat', Arial, Helvetica, sans-serif;
    float: left;
    width: 98.2%;
    border: #fbfbfb solid 4px;
    background-color:#117052;
    color: white;
    font-size: 24px;
    padding-top: 15px;
    padding-bottom: 15px;
    font-weight: 700;
    text-decoration:none;
    text-align:center;
    margin-top: -4px;
}

/* Page utilisateur */
.dejaInscrit {
    font-family: 'Montserrat', Arial, Helvetica, sans-serif;
	text-decoration:none;
	text-align:center;
	color:white;
	font-size: 20px;

}


</style>
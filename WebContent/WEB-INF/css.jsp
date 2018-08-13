<style>

body{
	margin: 0; 
	padding: 0;
}

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

.img {
	position: fixed;
	left: 0;
	top: 0;
/*     background-image: url(https://nord-pas-de-calais.afpa.fr/documents/21653/0/Etablissement+-+Visuel+defaut/83a45ee6-0445-4772-a649-002522afcdd4); */
    background-repeat: no-repeat;
    background-size: cover;
    height: 100%;
    width: 100%;
    margin: 0;
  	-webkit-filter: blur(3px); 
 	filter: blur(3px);  
 	z-index: -99999;
 }
 
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
/*-------- FORMULAIRE --------------*/
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

.href-login {
    font-family: 'Montserrat', Arial, Helvetica, sans-serif;
    float: left;
    width: 98.2%;
    border: #fbfbfb solid 4px;
    cursor: pointer;
    background-color:#117052;
    color: white;
    font-size: 24px;
    padding-top: 15px;
    padding-bottom: 15px;
    transition: all 0.3s;
    font-weight: 700;
    text-decoration:none;
    text-align:center;
    margin-top: -4px;
}

.div-form-inscription {
	background-color:rgba(72, 72, 72, 0.54);
	box-shadow: 0px 0px 13px 4px #606060;
	padding-left:35px;
	padding-right:35px;
	padding-top:35px;
	padding-bottom:50px;
	width: 450px;
	float: left;
	left: 50%;
	position: absolute;
 	margin-top:77px;
	margin-left: -260px;
  	border-radius: 7px;
  
}

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


.dejaInscrit {
    font-family: 'Montserrat', Arial, Helvetica, sans-serif;
	text-decoration:none;
	text-align:center;
	color:white;
	font-size: 20px;

}

table.tab-quest {
	border:none;
}

th.rep-th{
    background-color:inherit;


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

th {
  font-family: 'Montserrat', Arial, Helvetica, sans-serif;
  background-color: #b7ffb7;
  font-size: 17px;
}

td {
  font-family: 'Montserrat', Arial, Helvetica, sans-serif;
  font-size: 16px;

}

td.rep-td {
    font-family: 'Montserrat', Arial, Helvetica, sans-serif;
    font-size: 14px;

}


table {
	border: thin solid #009688;
	border-collapse: collapse;
	margin:auto;
}

fieldset{
	margin: auto;
	border:none;
	border-top:1px solid black;

}


legend{
	font-family: 'Montserrat', Arial, Helvetica, sans-serif;
	text-align: center;

} 


input.submit-tab {
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
	margin-top: 0px;
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
	margin-top: 0px;
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

.div-tab-quest, .div-tab-quizz {
    margin-top: 1%;
}


input.sub-quizz {
	font-family: 'Montserrat', Arial, Helvetica, sans-serif;
    float: right;
	width: 5%;
    margin-right: 13.5%;
    border: #ccc1c1 solid 3px;
    background-color: #75a787;
    color: white;
    font-size: 18px;
    padding-top: 10px;
    padding-bottom: 10px;
    transition: all 0.3s;
    margin-top: 0px;
}

input.sub-compet {
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
    top: 25.3%;
    height: 40px;
}



input.intitule{
    font-family: 'Montserrat', Arial, Helvetica, sans-serif;
	font-size: 20px;
	border: none;
	border-bottom: 2px solid grey;
	width:20%;
    margin: 4% 41%;
    color:#083510;
}

textarea {
	margin-left: 42%;
    margin-top: -1%;
    margin-bottom: 4%;
    font-size:15px;
    font-family: 'Montserrat', Arial, Helvetica, sans-serif;
    color:#083510;
}

::placeholder {
	color:green;
	font-style:italic;

}


</style>
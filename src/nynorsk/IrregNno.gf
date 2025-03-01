--# -path=.:../scandinavian:../common:../abstract:../../prelude

-- see: http://frodo.bruderhof.com/norskklassen/commonverbs.htm

concrete IrregNno of IrregNnoAbs = CatNno ** open ParadigmsNno in {

  flags optimize=values ;
    coding=utf8 ;

  lin be_V = mkV "be" "ber" "bes" "bad" "bede" "be" ;
  lin bite_V = mkV "bite" "bit" "bitast" "beit" "bite" "bit" ;
  lin verte_V = mkV "verte" "vert" "vertast" "vart" "vorte" "vert" ;
  lin brenne_V = mkV "brenne" "brenn" "brenn" "brann" "brunne" "brenn" ;
  lin blase_V = mkV "blåse" "blæs" "blåsast" "bles" "blåse" "blås" ;
  lin bringe_V = mkV "bringe" "bringar" "bringast" "bringa" "bringa" "bring" ;
  lin burde_V = mkV "burde" "bør" "burdest" "burde" "burda" "burde" ;
  lin bære_V = mkV "bere" "ber" "berast" "bar" "bore" "ber" ;
  lin dra_V = mkV "dra" "dreg" "dragast" "drog" "drege" "dra" ;
  lin drikke_V = mkV "drikke" "drikk" "drikkast" "drakk" "drukke" "drikk" ;
  lin drive_V = irregV "drive" "dreiv" "drive" ;
  lin dø_V = mkV "døy" "døyr" "døyast" "døydde" "døydd" "døy" ;
  lin eie_V = mkV "eige" "eig" "eigast" "eigde" "eigd" "eig" ;
  lin falle_V = mkV "falle" "fell" "fallast" "fall" "falle" "fall" ;
  lin finne_V = mkV "finne" "finn" "finnas" "fann" "funne" "finn" ;
  lin finnast_V = mkV "finnast" "finst" "finst" "fans" "funnest" "finnast" ;
  lin fly_V = mkV "flyge" "flyg" "flygast" "flaug" "flyge" "flyg" ;
  lin flyte_V = mkV "flyte" "flyt" "flytast" "flaut" "flyte" "flyt" ;
  lin foretrekke_V = mkV "føretrekkje" "føretrekkjer" "føretrekkjast" "føretrekte" "føretrekt" "føretrekk" ;
  lin forlate_V = mkV "forlate" "forlèt" "forlatast" "forlét" "forlate" "forlat" ;
  lin forstå_V = irregV "forstå" "forstod" "forstått" ;
  lin fortelle_V = mkV "fortelje" "fortel" "forteljast" "fortalde" "fortalt" "fortel" ;
  lin fryse_V = mkV "fryse" "frys" "frysast" "fraus" "frose" "frys" ;
  lin få_V = mkV "få" "får" "fåast" "fekk" "fått" "få" ;
  lin gi_V = mkV "gje" "gjev" "gjevast" "gav" "gjeve" "gje" ;
  lin gjelde_V = mkV "gjelde" "gjeld" "gjeldast" "gjaldt" "gjeldt" "gjeld";
  lin gjøre_V = mkV "gjere" "gjer" "gjerast" "gjorde" "gjort" "gjer";
  lin gni_V = irregV "gni" "gnidde" "gnidd" ;
  lin gå_V = irregV "gå" "gjekk" "gått" ;
  lin ha_V = irregV "ha" "hadde" "hatt" ;
  lin hente_V = irregV "hente" "henta" "henta" ;
  lin hete_V = irregV "heite" "heitte" "heitt" ;
  lin hjelpe_V = irregV "hjelpe" "hjelpte" "hjelpt" ;
  lin holde_V = mkV "halde" "held" "haldast" "heldt" "halde" "hald" ;
  lin komme_V = mkV "kome" "kjem" "kommast" "kom" "kome" "kom" ;
  lin kunne_V = mkV "kunne" "kan" "kan" "kunne" "kunna" "kunn" ;
  lin la_V = mkV "la" "lar" "lar" "let" "latt" "la" ;
  lin legge_V = mkV "leggje" "legg" "leggast" "la" "lagt" "legg";
  lin ligge_V = mkV "liggje" "ligg" "liggast" "låg" "lege" "ligg";
  lin løpe_V = springe_V ;
  lin måtte_V = mkV "måtte" "må" "måast" "måtte" "måtta" "må";
  lin renne_V = mkV "renne" "renn" "rennast" "rant" "rent" "renn" ;
  lin se_V = mkV "sjå" "ser" "sjåast" "såg" "sett" "sjå" ;
  lin selge_V = mkV "selje" "sel" "seljast" "selde" "selt" "sel" ;
  lin sette_V = irregV "sette" "satte" "satt" ;
  lin si_V = mkV "seie" "seier" "seiast" "sa" "sagt" "sei" ;
  lin sitte_V = mkV "sitje" "sit" "sits" "sat" "sete" "sit" ;
  lin skjære_V = irregV "skjere" "skar" "skure" ;
  lin skrive_V = irregV "skrive" "skreiv" "skrive" ;
  lin skulle_V = irregV "skulle" "skulle" "skulla" ;
  lin slå_V = irregV "slå" "slo" "slått" ;
  lin slåss_V = mkV "slåss" "slåss" "slåss" "sloss" "slåss" "slåss" ;
  lin sove_V = mkV "sove" "søv" "sovast" "sov" "sove" "sov" ;
  lin springe_V = mkV "springe" "spring" "springast" "sprang" "sprunge" "spring";
  lin spørre_V = mkV "spørje" "spør" "spørjas" "spurte" "spurt" "spør" ;
  lin stikke_V = irregV "stikke" "stakk" "stukke" ;
  lin stå_V = irregV "stå" "stod" "stått" ;
  lin suge_V = mkV "suge" "sug" "sugast" "saug" "sugd" "sug" ;
  lin synes_V = irregV "synes" "syntes" (variants {"synes" ; "syns"}) ;
  lin synge_V = mkV "synge" "syng" "syngast" "sang" "sunge" "syng";
  lin ta_V = mkV "ta" "tek" "tek" "tok" "teke" "ta" ;
  lin treffe_V = mkV "treffe" "treff" "treffast" "traff" "truffe" "treff" ;
  lin trives_V = mkV "trivast" "trivst" "trivast" "treivst" "trivest" "trivst" ;
  lin ville_V = irregV "ville" "ville" "villet" ;
  lin vite_V = mkV "vite" "veit" "vitast" "visste" "visst" "vit" ;
}

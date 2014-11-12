'use strict';
var getdatas = require('../../models/buyer');
module.exports = function (router) {
    var model = new getdatas();
    router.get('/', function (req, res) {      
        res.format({
            json: function () {
                res.json(model);
            },
            html: function () {
                res.render('buyer/index', model);
            }
        });
    });
     router.get('/login', function (req, res) {  
        req.getConnection(function(err,connection){       
            connection.query('SELECT * FROM clients',function(err,rowss){
               var rows= {'friends':rowss}  
                if(err) console.log("Error Selecting : %s ",err );     
                res.format({
                    json: function () {
                    //res.json(rows);
                },
                html: function () {
                   // console.log(rows);
                    res.render('buyer/index',rows);
                }
                });                 
            });       
         });  
    });
    router.get('/edit/:id/', function (req, res) {  
        var ids = req.params.id;
        req.getConnection(function(err,connection){       
            connection.query('SELECT * FROM clients where cli_id ="'+ids+'"',function(err,rowss){
               var rows= {'friends':rowss,'id':ids}  
                if(err) console.log("Error Selecting : %s ",err );     
                res.format({    
                    json:function(){
                    },               
                    html: function () {                  
                        res.render('buyer/viewMerchant',rows);
                    }
                });                 
            });       
         });  
    });
    router.get('/update/:id/', function (req, res) {  
        //var ids = req.params.id;
        var data = {
            cli_code:'Ebay',
            cli_company:req.body.company,
            cli_address:req.body.address,
            cli_phone:req.body.phone
        };
        //console.log(data);
         res.render('/buyer/viewMerchant',rows);
        req.getConnection(function(err,connection){       

            connection.query("UPDATE clients set ? WHERE cli_id = ? ",[data,ids],function(err,rowss){
                if(err) console.log("Error Selecting : %s ",err );     
                res.format({         
                    json:function(){

                    },         
                    html: function () {                  
                        res.redirect('/buyer/index');
                    }
                });                 
            });        
         }); 
    });
};

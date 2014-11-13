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
                res.redirect('/buyer/login');
            }
        });
    });

     router.get('/login', function (req, res) {  
        req.getConnection(function(err,connection){       
            connection.query('SELECT * FROM clients',function(err,rowss){
               res.clearCookie();
               res.cookie('khizar', rowss);
               var rows= {'friends':rowss,'cookie':res.cookie('khizar')};  
                if(err) console.log("Error Selecting : %s ",err );     
                res.format({
                    json: function (rows) {
                    //res.json(rows);
                },
                html: function () {
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

    router.get('/add', function (req, res) { 
        var title= {'Title':'Add New clients'}  
        res.render('buyer/addMerchant',title); 
        console.log(title);
    });

    router.post('/update', function (req, res) {  
       var ids = req.body.cli_id;
        var data = {
            cli_code:'Ebay',
            cli_company:req.body.company,
            cli_address:req.body.address,
            cli_phone:req.body.phone
        };
        req.getConnection(function(err,connection){      
            connection.query("UPDATE clients set ? WHERE cli_id = ? ",[data,ids],function(err,rowss){
                if(err) console.log("Error Selecting : %s ",err );     
                 res.format({         
                    json:function(){
                        res.json(data);
                    },         
                    html: function () {   
                        res.redirect('/buyer/login');
                        //res.send("UPDATED");
                    }
                });
            });        
         }); 
    });

    router.post('/save', function (req, res) {  
        var data = {
            cli_code:req.body.code,
            cli_company:req.body.company,
            cli_address:req.body.address,
            cli_phone:req.body.phone
        };
        req.getConnection(function(err,connection){      
            connection.query("INSERT INTO clients set ? ",data, function(err, rows){
                if(err) console.log("Error Selecting : %s ",err );     
                 res.format({         
                    json:function(){
                        res.json(data);
                    },         
                    html: function () {   
                        res.redirect('/buyer/login');
                        //res.send("UPDATED");
                    }
                });
            });        
         }); 
    });


};

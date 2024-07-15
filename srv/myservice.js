module.exports = async srv => {

    srv.on('greeting' , (req, res)=> {
        return "Good Morning! " + req.data.name;
    })
    srv.on('multiply' , (req , res )=> {
        let total =  req.data.num1 * req.data.num2;
        return total;
    })

}
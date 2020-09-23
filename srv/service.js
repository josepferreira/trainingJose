const cds = require('@sap/cds')

module.exports = async function() {
    this.on('hello', async(req) => {
        
        console.log("Hello Is called"+req.data);
        return "hello World:"+JSON.stringify(req.data);
    })

    this.before(['CREATE','UPDATE'], 'Products', async (req) => {
        console.dir(req.data)
        //req.data.ID = uuid().replace(/-/g, "");
        //req.data.BASE_PRICE = req.data.BASE_PRICE * 1.5;
    })

    this.after(['READ'], 'Products', async (products, req) => {
        //req.data.ID = uuid().replace(/-/g, "");
        products.map(product => {
            product.SALES_PRICE = product.BASE_PRICE * 1.5;
        });
    })
}
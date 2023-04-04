/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exp10;

/**
 *
 * @author 21CSE079
 */
public class product {
   
private String name;
private String instock;
private double price;


public product()
        {
}

public product( String name, double price, String instock) {

this.name = name;

this.price = price;
this.instock= instock;
}



public String getName() {
return name;
}

public void setName(String name) {
this.name = name;
}




public double getPrice() {
return price;
}

public void setPrice(double price) {
this.price = price;
}

public String getinstock() {
return instock;
}

public void setQuantity(String instock)
        {
this.instock = instock;
}

}




# Sales Taxes

## Case
Basic sales tax is applicable at a rate of 10% on all goods, except books, food,
and medical products that are exempt. Import duty is an additional sales tax applicable
on all imported goods at a rate of 5%, with no exemptions.

When I purchase items I receive a receipt that lists the name of all the items and
their price (including tax), finishing with the total cost of the items, and the
total amounts of sales taxes paid. The rounding rules for sales tax are that for
a tax rate of n%, a shelf price of p contains (np/100 rounded up to the nearest 0.05)
amount of sales tax.

Application will print out the receipt details for these shopping baskets. The output would be has standard out or CSV. Each row in the input represents a line item of the receipt.

# INPUT

## Input 1
Quantity, Product, Price

1, book, 12.49

1, music cd, 14.99

1, chocolate bar, 0.85


## Input 2
Quantity, Product, Price

1, imported box of chocolates, 10.00

1, imported bottle of perfume, 47.50


## Input 3
Quantity, Product, Price

1, imported bottle of perfume, 27.99

1, bottle of perfume, 18.99

1, packet of headache pills, 9.75

1, imported box of chocolates, 11.25


# OUTPUT

## Output 1
1, book, 12.49

1, music cd, 16.49

1, chocolate bar, 0.85


Sales Taxes: 1.50

Total: 29.83

## Output 2
1, imported box of chocolates, 10.50

1, imported bottle of perfume, 54.65


Sales Taxes: 7.65

Total: 65.15

## Output 3
1, imported bottle of perfume, 32.19

1, bottle of perfume, 20.89

1, packet of headache pills, 9.75

1, imported box of chocolates, 11.85

Sales Taxes: 6.70
Total: 74.68

## CSV File Output
```
Application will generate a CSV file at directory "tmp"
with file format "sales_taxes_yyyy-mm-dd_HH_MM_SS_Z.csv"

# Example
tmp/sales_taxes_2017-10-06_16_42_26_0800.csv

```


## Setup
```
bundle install
```

## Run Unit Test

```
rspec
```

## Usage
```
ruby bin/sales_tax.rb file_path

# Example
ruby bin/sales_tax.rb input/input1.txt
```

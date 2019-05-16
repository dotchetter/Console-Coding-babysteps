
$beverage = 0
$size = 0
$payment = 0 

$priceList = @(
    20,
    30,
    35,
    50
)

$beverageList = @(
    'Mocaccino', 'Capuccino',
    'Latte', 'Coffee with milk',
    'Coffee', 'Chocolate'
)

# Infinite loop
while ($true) {

    # Iterate unless the beverage choice is illogical
    while ($beverage -lt 1 -or $beverage -gt 6) {
        Write-Host "
        *   The best coffee in the shell    *
        *     Pick a beverage and size      *

        1. Mocaccino            2. Capuccino
        3. Latte                4. Coffee with milk
        5. Coffee               6. Chocolate
        * Please make a selection and press Enter"

        [int]$beverage = Read-Host " -> "        
    }

    # Iterate unless size choice is illogical
    while ($size -lt 1 -or $size -gt 4) {
        Write-Host "
        1. Small 20 SEK       2. Medium 30 SEK
        3. Large 35 SEK       4. Huge 50 SEK"

        $_choice = $beverageList[$beverage - 1]
        Write-Host "* Pick a size for your $_choice"

        [int]$size = Read-Host " -> "
    }

    # Set the price to pay, to be the index in the list of prices that corresponds with 
    # the size of beverage they chose, minus 1 to correct for the fact that arrays start
    # at 0.
    $price = $priceList[$size - 1]

    while ($payment -ne $price) {
        Write-Host "* Please pay in the slot below.
        * Total: $price SEK"
        [int]$payment = Read-Host " -> "

        if ($payment -lt $price) {
            Write-Host "Sorry, you didn't pay enough."
        } elseif ($payment -gt $price) {
            $change = ($payment - $price)
            Write-Host "You paid: $payment, Change: $change"
            # Break the loop since they overpaid and have been given change.
            break
        }
    }
    Write-Host "Your $_choice is brewing, thank you for your order!"
    $beverage = 0
    $size = 0
}
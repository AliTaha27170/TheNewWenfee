@extends('layouts.app')
@section('content')
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
    <div class="panel panel-default mb-5">
        <div class="panel-heading mt-4">
            <div class="row">
              <div class="col-md-10">
                <div class="col-md-4 pull-left">
                <h3 class="m-0">WENFEE</h3>
                <strong>Order #100102</strong><br>
                 placed: 02/04/2019 <br>
                </div>
                <div class="col-md-4 pull-right">
                7184 TROY HELL DRIVE SUIT C. <br>
                ELKRIDGE, MARYLAND 21075 <br>
                410-379-2267<br>
                </div>
              </div>
            </div>
        </div>
        <div class="panel-body">
            <div class="col-xs-6 mb-3">
                <div class="panel panel-default">
                    <div class="panel-heading">
                    <strong>Payment Information</strong>
                    </div>
                    <div class="panel-body">
                      Name: Shaza Khames <br>
                      Company: wenfee <br>
                      Address Line 1: qazqaz <br>
                      Address Line 2: qazqaz <br>
                      City/State/Postal Code: Mymy, MD 21201 <br>
                      Country: United States <br>
                      Phone Number: +12112112112 <br>
                    </div>
                </div>                
            </div>
            <div class="col-xs-6 mb-3 text-left">
              <div class="panel panel-default">
                  <div class="panel-heading">
                  <strong>Shipping Address</strong>
                  </div>
                  <div class="panel-body">
                      Name: Shaza Khames <br>
                      Company: wenfee <br>
                      Address Line 1: qazqaz <br>
                      Address Line 2: qazqaz <br>
                      City/State/Postal Code: Mymy, MD 21201 <br>
                      Country: United States <br>
                      Phone Number: +12112112112 <br>
                  </div>
                </div>
            </div>
          <table class="table">
            <thead>
              <tr>
                <th>Sku    </th>
                <th>Item Description </th>
                <th>Qty.    </th>
                <th>Price   </th>
                <th class="text-right">Totla  </th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>SPC073              </td>
                <td>Whole Cardamon Green</td>
                <td>27                  </td>
                <td>$237.50             </td>
                <td class="text-right">$6,412.50</td>
              </tr>
              <tr class="border-bottom">
                <td>_JUB011       </td>
                <td>Guava Juice   </td>
                <td>4             </td>
                <td>$1.49         </td>
                <td class="text-right">$5.96  </td>
              </tr>
            </tbody>
          </table>
          <div class="row justify-content-end">
            <div class="col-md-4">
              <table class="table borderless">
                <tbody>
                  <tr>
                    <th scope="row" class="text-left">Subtotal</th>
                    <th class="text-right">$6,418.46</th>
                  </tr>
                  <tr>
                    <th scope="row" class="text-left">Shipping</th>
                    <th class="text-right">$139.27</th>
                  </tr>
                  <tr>
                    <th scope="row" class="text-left">Tax</th>
                    <th class="text-right">$385.11</th>
                  </tr>
                  <tr>
                    <th scope="row" class="text-left">TOTAL</th>
                    <th class="text-right">$6,942.84</th>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
    </div>
</div>
<style>
  @media print {
  .footer 
  {
    display: none;
  }
    /* body {transform: scale(1);}
    table {page-break-inside: avoid;} */
}
.sticky-top , .footer
{
  display : none ;
}
</style>
@endsection





<!-- https://codepen.io/victorvacarescu/pen/BErwaQ -->
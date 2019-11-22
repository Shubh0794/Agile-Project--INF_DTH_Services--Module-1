<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Customer Registration</title>



</head>
<body>
    <div>

        <h2 style="margin: 10px 620px;"> Infinity Retailer </h2>

        <div class="jumbotron" style="margin:25px 500px 100px;" >

            <form>
                <div>
                    <label for="name"> <b>Name</b> </label>
                    <input class="form-control" type="text" placeholder="Enter name" name="retailer_name" id="name">
                    <br>
                </div>



                <div>
                    <label for="contact1"> <b>Contact 1</b> </label>
                    <input class="form-control" type="number" placeholder="Enter contact1" name="retailer_contact1" id="contact1">
                    <br>
                </div>

                <div>
                    <label for="contact2"> <b>Contact 2</b> </label>
                    <input class="form-control" type="number" placeholder="Enter contact2" name="retailer_contact2" id="contact2">
                    <br>
                </div>


                <div class="form-group">
                    <label for="address1"><b>Address 1</b></label>
                    <textarea class="form-control" id="address1" name="retailer_address1"  placeholder="Enter primary address.." rows="3"></textarea>
                </div>

                <div class="form-group">
                    <label for="address2"><b>Address 2</b></label>
                    <textarea class="form-control" id="address2" name="retailer_address2" placeholder="Enter secondary address.." rows="3"></textarea>
                    <br>
                </div>

                <div>
                  <label> <b>State</b> </label>&nbsp;&nbsp;
                        <select id="state" name="state">
                            <option value="select" selected> Select </option>
                            <option value="AL">Alabama</option>
                            <option value="AK">Alaska</option>
                            <option value="AZ">Arizona</option>
                            <option value="AR">Arkansas</option>
                            <option value="CA">California</option>
                            <option value="CO">Colorado</option>
                            <option value="CT">Connecticut</option>
                            <option value="DE">Delaware</option>
                            <option value="DC">District Of Columbia</option>
                            <option value="FL">Florida</option>
                            <option value="GA">Georgia</option>
                            <option value="HI">Hawaii</option>
                            <option value="ID">Idaho</option>
                            <option value="IL">Illinois</option>
                            <option value="IN">Indiana</option>
                            <option value="IA">Iowa</option>
                            <option value="KS">Kansas</option>
                            <option value="KY">Kentucky</option>
                            <option value="LA">Louisiana</option>
                            <option value="ME">Maine</option>
                            <option value="MD">Maryland</option>
                            <option value="MA">Massachusetts</option>
                            <option value="MI">Michigan</option>
                            <option value="MN">Min nesota</option>
                            <option value="MS">Mississippi</option>
                            <option value="MO">Missouri</option>
                            <option value="MT">Montana</option>
                            <option value="NE">Nebraska</option>
                            <option value="NV">Nevada</option>
                            <option value="NH">New Hampshire</option>
                            <option value="NJ">New Jersey</option>
                            <option value="NM">New Mexico</option>
                            <option value="NY">New York</option>
                            <option value="NC">North Carolina</option>
                            <option value="ND">North Dakota</option>
                            <option value="OH">Ohio</option>
                            <option value="OK">Oklahoma</option>
                            <option value="OR">Oregon</option>
                            <option value="PA">Pennsylvania</option>
                            <option value="RI">Rhode Island</option>
                            <option value="SC">South Carolina</option>
                            <option value="SD">South Dakota</option>
                            <option value="TN">Tennessee</option>
                            <option value="TX">Texas</option>
                            <option value="UT">Utah</option>
                            <option value="VT">Vermont</option>
                            <option value="VA">Virginia</option>
                            <option value="WA">Washington</option>
                            <option value="WV">West Virginia</option>
                            <option value="WI">Wisconsin</option>
                            <option value="WY">Wyoming</option>
                        </select>
                </div>


                <br>

                <div>
                  <label> <b>City</b> </label> &nbsp;&nbsp;&nbsp;
                    <select id="state" name="state">
                        <option value="select" selected> Select </option>
                        <option>San Jose</option>
                        <option>Edison</option>
                        <option>San Diego</option>
                        <option>San Francisco</option>
                        <option>San Francisco</option>

                    </select>
                </div>

                    <br>


                <div>
                    <label for="settopbox"> <b>Set Top Box</b> </label>
                    <input class="form-control" type="number" name="retailer_settopbox" placeholder="Enter set top box max limit" id="settopbox">
                    <br>
                </div>


                <div>
                    <label for="creditlimit"> <b>Credit Limit</b> </label>
                    <input class="form-control" type="number" name="retailer_creditlimit" placeholder="Enter credit limit" id="creditlimit">
                    <br>
                </div>



                <div>
                    <label for="commissionpercentage"> <b>Commission Percentage</b> </label>
                    <input class="form-control" type="number" name="retailer_creditlimit" placeholder="Enter commission percentage on sale of goods" id="commissionpercentage">
                    <br>
                </div>

                <div>
                    <label for="servicecharges"> <b>Service Charges</b> </label>
                    <input class="form-control" type="number" name="retailer_servicecharges" placeholder="Enter service charges" id="servicecharges">
                    <br>
                </div>


                <div>
                    <label for="inventorylist"> <b>Inventory List</b> </label>
                    <input class="form-control" type="text" name="retailer_inventorylist" placeholder="Enter inventory list" id="inventorylist">

                    <br>
                </div>


                <div>
                    <label for="date"> <b>Retailer Creation Date</b> </label>
                    <input class="form-control" type="date" id="date" readonly>
                    <br>
                </div>


                <div>
                    <label for="totalcostofinventory"> <b>Total Cost of Inventory</b> </label>
                    <input class="form-control" type="number" name="retailer_totalcostofinventory" placeholder="Enter total cost of inventory" id="totalcostofinventory">
                    <br>
                </div>


                <div>
                    <label for="status"> <b> Retailer Status</b> </label>
                    <input class="form-control" type="text" name="retailer_status" placeholder="Enter retailer status" id="status">

                    <br>
                </div>

                <button type="submit" class="btn btn-primary" id="btnRegister" style=" position: relative; margin-left: 180px;"> Register </button>

            </form>
        </div>
    </div>

</body>
</html>

<script type="text/javascript">

    function formatDate(date) {
            var d = new Date(date),
                month = '' + (d.getMonth() + 1),
                day = '' + d.getDate(),
                year = d.getFullYear();

            if (month.length < 2)
                month = '0' + month;
            if (day.length < 2)
                day = '0' + day;

            return [year, month, day].join('-');
        }

    document.getElementById('date').value = formatDate(new Date());

</script>

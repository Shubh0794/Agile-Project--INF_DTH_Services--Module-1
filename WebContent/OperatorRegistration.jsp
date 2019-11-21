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

    <title>Operator Registration</title>


</head>

<body>
    <div>

        <h2 style="margin: 10px 710px;"> Infinity Operator </h2>

        <div class="jumbotron" style="margin:25px 600px 100px;">

            <form>
                <div>
                    <label for="firstname"> <b>First Name</b> </label>
                    <input class="form-control" type="text" placeholder="Enter first name" name="operator_firstname"
                        id="firstname">
                    <br>
                </div>

                <div>
                    <label for="lastname"> <b>Last Name</b> </label>
                    <input class="form-control" type="text" placeholder="Enter last name" name="operator_lastname"
                        id="lastname">
                    <br>
                </div>

                <div class="form-group">
                    <label for="email"> <b>Email</b> </label>
                    <input type="email" class="form-control" id="email" name="operator_email"
                        aria-describedby="emailHelp" placeholder="Enter email">
                </div>

                <div>
                    <label for="phone"> <b>Phone Number</b> </label>
                    <input class="form-control" type="tel" placeholder="Enter phone number" name="operator_phone"
                        id="phone">
                    <br>
                </div>

                <div> 
                    <label for="shiftStartTime"> <b>Shift Start Time</b> </label> &nbsp;&nbsp;&nbsp;    
                    <input type="time" name="operator_shiftStartTime" id="shiftStartTime">
                </div>
                
                <br>
                
                <div>
                    <label for="shiftEndTime"> <b>Shift End Time</b> </label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="time" name="operator_shiftEndTime" id="shiftEndTime" readonly>
                </div>

                <br>

                <div>
                    <label for="maxCustomers"> <b>Max Customer Number</b> </label> &nbsp;&nbsp;
                    <input type="number" name="operator_maxCustomers" id="maxCustomers" min="1" max="20">
                </div>

                <br>

                <div>
                    <label for="date"> <b>Creation Date</b> </label>
                    <input class="form-control" type="date" name="operator_date" id="date" readonly>
                    <br>
                </div>

                <button type="submit" class="btn btn-primary" id="btnRegister"
                    style=" position: relative; margin-left: 170px;"> Register </button>

            </form>
        </div>
    </div>

</body>

</html>

<script type="text/javascript">

   /*  function test(){
        alert('this is working!!');
    } */
    
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

    /* function OutputTime(intime) {
            var p1 = parseInt(intime.slice(0, 2));
            console.log(p1);
            var p2 = parseInt(intime.slice(3, 5));
            console.log(p2);

            return [p1+8, p2].join('-');
        }

    function setValue(){
        var inputTime = document.getElementById('shiftStartTime').value;
        console.log(inputTime);
        document.getElementById('shiftEndTime').value = OutputTime(inputTime); //OutputTime(inputTime);
        console.log(document.getElementById('shiftEndTime').value);
    }

        */

    document.getElementById('date').value = formatDate(new Date());

</script>
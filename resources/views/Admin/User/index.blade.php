@extends('layouts.admin')
@section('title', 'View Users')
@section('assets')
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.5.6/css/buttons.dataTables.min.css">
@endsection
@section('content')
<div class="row">
    <div class="col-sm-12">
        <section class="card">
            <header class="card-header"> Users </header>
            <div class="card-body">

				<div class="flash-message">
					@foreach (['danger', 'warning', 'success', 'info'] as $msg) @if(Session::has('alert-' . $msg))
						<p class="alert alert-{{ $msg }}">{{ Session::get('alert-' . $msg) }} <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></p>
					@endif @endforeach
				</div>

				<div class="adv-table">
					<table  class="display table table-bordered table-striped" id="dynamic-table">
						<thead>
							<tr>
								<th>ID</th>
								<th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Mailing Address</th>
                <th>Contact Number</th>
                <th>Email Verified?</th>
                <th>KYC Approved?</th>
                <th>Assign Card Number</th>
                <th>Create Date</th>
								<th>Status</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
						@foreach($getUsers as $user)
							<tr class="gradeX">
								<td>{{ $user->id }}</td>
								<td>{{ $user->first_name }}</td>
                <td>{{ $user->last_name }}</td>
                <td>{{ $user->email }}</td>
                <td>
                  {{ $user->address1 }}</br>
                  {{$user->address2}}</br>
                  {{$user->city}}@if(!empty($user->pincode)),{{$user->pincode}}@endif</br>
                  {{$user->state}}@if(!empty($user->d_country)),{{$user->d_country}}@endif
                </td>
                <td>{{ $user->contactNumber }}</td>
                <td>
                  @if($user->email_verified_at != null)
                    Verified
                  @else
                    Pending
                  @endif
                </td>
                <td> {{$user->is_kyc_approved == 0 ?'Not Approved' : 'Approved'}}</td>
                <td>
                  @if($user->cardStatus == 'assigned')
                  <span class="badge badge-warning label-mini upCard">{{$user->cardNumber}}</span>
                  <span class="badge badge-primary label-mini updateCard" style="cursor:pointer" data-id="{{$user->id}}" data-card="{{$user->cardNumber}}">update</span>
                  @elseif($user->cardStatus == 'verified')
                  <span class="badge badge-warning label-mini">{{$user->cardNumber}}</span>
                  <span class="badge badge-success label-mini">Verified</span>
                  @elseif($user->cardStatus == 'blocked')
                  <span class="badge badge-warning label-mini">{{$user->cardNumber}}</span>
                  <span class="badge badge-danger label-mini">Blocked</span>
                  @else
                  <input type="text" maxlength="16" minlength="16" name="cardNumber" class="cardNumber" data-id="{{$user->id}}">
                  <span class="badge badge-info label-mini assigncard" style="cursor: pointer;" data-id="{{$user->id}}">Pending</span>
                  @endif
                </td>
                <td>{{ $user->created_at->setTimezone('GMT+08') }}</td>
								<td>
                  @if($user->status == 'active')
                  <span class="badge badge-success label-mini status" data-id="{{$user->id}}">Activated</span>
                  @else
                  <span class="badge badge-danger label-mini status" data-id="{{$user->id}}">Deactivated</span>
                  @endif
								</td>
                <td><span class="btn btn-danger btn-sm delete" data-id="{{$user->id}}" style="margin-right:5px;"><i class="fa fa-trash-o" aria-hidden="true"></i></span></td>
							</tr>
								@endforeach
						</tbody>
					</table>
				</div>
			</div>
		</section>
	</div>
</div>
@endsection
@section('script')
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.flash.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.print.min.js"></script>
<script>
	$(document).ready(function () {
    // $('#dynamic-table').dataTable();
    $('#dynamic-table').DataTable( {
       dom: 'Bfrtip',
       buttons: [
           'csv'
       ]
    });
   });

    // status change start
    $('.status').on('click',function(){
    // sweet alert for update status
    swal({
      title: "Are you sure?",
      text: "Status will be changed after pressing OK",
      icon: "warning",
      buttons: true,
      dangerMode: true,
    })
    .then((willDelete) => {
      if (willDelete) {
        // ajax start for change status
        var userId = $(this).data('id');
          $.ajax({
            type:'POST',
            async:true,
            dataType: "json",
            url: "user/updateUserStatus",
            data: {_token:'{{ csrf_token() }}',userId:userId},
            context:this,
            success:function(data){

                if(data == 'deactive'){
                    $(this).closest('.status').removeClass().addClass('badge badge-danger label-mini status');
                    $(this).text('Deactivated');
                }
                if(data == 'active'){
                    $(this).closest('.status').removeClass().addClass('badge badge-success label-mini status');
                    $(this).text('Activated');
                }
            }
          });
          // end
        // swal("Your Status Changed...!", {
        //   icon: "success",
        // });

      } else {
        swal("No changes were made!");
      }
    });
      // end

     });
    // status change end

    // card assign to user start
    $('.assigncard').on('click',function(){
      var cardNumber = $(this).closest('td').find('.cardNumber').val();
    if($.isNumeric(cardNumber) && cardNumber.length === 16){
    // sweet alert for update status
    swal({
      title: "Are you sure?",
      text: "Status will be changed after pressing OK",
      icon: "warning",
      buttons: true,
      dangerMode: true,
    })
    .then((willDelete) => {
      if (willDelete) {
        // ajax start for change status
        var userId = $(this).data('id');
          $.ajax({
            type:'POST',
            async:true,
            dataType: "json",
            url: "user/assignCard",
            data: {_token:'{{ csrf_token() }}',userId:userId,cardNumber:cardNumber},
            context:this,
            success:function(data){
                if(data['errors']){
                  alert(data['errors']['cardNumber'][0]);
                }
                if(data == 'assigned'){
                    $(this).closest('.assigncard').removeClass().addClass('badge badge-success label-mini');
                    $(this).text('Assigned');
                    $(this).closest('td').find('.cardNumber').prop('disabled', true);
                }
            }
          });
          // end
        swal("Are You Sure about 16-Digit Card Assignment Number?", {
          icon: "success",
        });

      } else {
        swal("Card Assignment Proccess Aborted...!");
      }
    });
  } else { //check card number is not empty IF end
    swal({
      title: "Are you sure?",
      text: "Status will be changed after pressing OK",
      icon: "warning",
      buttons: true,
      dangerMode: true,
    })
    .then((willDelete) => {
      if (willDelete) {
        swal("Please Enter 16-Digits Card Number Properly(Numeric)for Assign", {
          icon: "success",
        });

      } else {
        swal("Card Assignment Proccess Aborted...!");
      }
    });
    }
      // end
     });
  // card assign to user end

  // update Card Number Start
    $('.updateCard').on('click',function(){
      Swal.fire({
        title: 'Update Card Number',
        input: 'text',
        inputAttributes: {
          minlength: 16,
          maxlength: 16
        },
        showCancelButton: true,
        confirmButtonText: 'Update',
        allowOutsideClick: () => !Swal.isLoading()
      }).then((result) => {
         if(!$.isNumeric(result.value)){
           swal("Please Enter Card Number as a Digits.");
         } else {
           var userId = $(this).data('id');
           var cardNumber = result.value;
           $.ajax({
             type:'POST',
             async:true,
             dataType: "json",
             url: "../admin/card/updateCardNumber",
             data: {_token:'{{ csrf_token() }}',userId:userId,cardNumber:cardNumber},
             context:this,
             success:function(data){
                if(data == 'error'){
                  swal("Card Number Already Exist!");
                } else {
                  $(this).closest('td').find('.upCard').text(data);
                }
             }
           });
         }
      });

     });

    // update Card Number End

    // delete user start
    $('.delete').on('click',function(){
    // sweet alert for update status
    swal({
      title: "Are you sure?",
      text: "User will be delete after pressing OK",
      icon: "warning",
      buttons: true,
      dangerMode: true,
    })
    .then((willDelete) => {
      if (willDelete) {
        // ajax start for change status
        var deleteId = $(this).data('id');
          $.ajax({
            type:'POST',
            async:true,
            dataType: "json",
            url: "user/deleteUser",
            data: {_token:'{{ csrf_token() }}',deleteId:deleteId},
            context:this,
            success:function(data){
              if(data == 'deleted'){
                $(this).parents("tr").remove();
              }
            }
          });
          // end
      } else {
        swal("No changes were made!");
      }
    });
      // end
     });
    // delete user end
</script>
@endsection

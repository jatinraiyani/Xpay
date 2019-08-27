<aside>
    <div id="sidebar"  class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
            <li>
                <a class="<?=(Request::is('admin/dashboard'))?"active":""?>"   href="{{URL::to('admin/dashboard')}}">
                    <i class="fa fa-dashboard"></i>
                    <span>Dashboard</span>
                </a>
            </li>
            <!-- users -->
            <li class="sub-menu">
                <a href="javascript:;" class="<?=(Request::is('admin/user/create') || Request::is('admin/user'))?"active":""?>" >
                    <i class="fa fa-users"></i>
                    <span>Users</span>
                </a>
                <ul class="sub">
                    <li class="<?=(Request::is('admin/user'))?"active":""?>" ><a  href="{{URL::to('admin/user')}}" >Users List</a></li>
                </ul>
            </li>
            <!-- admins -->
            @if(Auth::user()->id == 1)
            <li class="sub-menu">
                <a href="javascript:;" class="<?=(Request::is('admin/root/create') || Request::is('admin/root'))?"active":""?>" >
                    <i class="fa fa-users"></i>
                    <span>Admins</span>
                </a>
                <ul class="sub">
                    <li class="<?=(Request::is('admin/root/create'))?"active":""?>"><a  href="{{URL::to('admin/root/create')}}" >Add Admins</a></li>
                    <li class="<?=(Request::is('admin/root'))?"active":""?>" ><a  href="{{URL::to('admin/root')}}" >Admins List</a></li>
                </ul>
            </li>
            @endif
            <!-- CMS -->
           <!-- <li class="sub-menu">
               <a href="javascript:;" class="<?= Request::is('admin/cms/create') ? "active" : "" ?>">
                 <i class="fa fa-clipboard"></i>
                   <span>CMS</span>
               </a>
               <ul class="sub">
                   <li class="<?=(Request::is('admin/cms/create'))?"active":""?>" ><a  href="{{URL::to('admin/cms/create')}}" >Add CMS</a></li>
               </ul>
           </li> -->
           <!-- card  -->
           <li class="sub-menu">
                <a href="javascript:;">
                  <i class="fa fa-clipboard"></i>
                    <span>Card</span>
                </a>
                <ul class="sub">
                    <li class="<?=(Request::is('admin/card/cardLoad'))?"active":""?>" ><a href="{{URL::to('admin/card/cardLoad')}}" >Card Load</a></li>
                    <li class="<?=(Request::is('admin/card/cardPurchase'))?"active":""?>" ><a href="{{URL::to('admin/card/cardPurchase')}}" >Card Purchase</a></li>
                </ul>
            </li>
           <!-- Plans -->
            <!-- <li class="sub-menu">
                <a href="javascript:;" class="<?=(Request::is('admin/plan/create') || Request::is('admin/plan'))?"active":""?>" >
                    <i class="fa fa-cogs"></i>
                    <span>Plans</span>
                </a>
                <ul class="sub">
                    <li class="<?=(Request::is('admin/plan/create'))?"active":""?>" ><a href="{{URL::to('admin/plan/create')}}" >Add Plan</a></li>
                    <li class="<?=(Request::is('admin/plan'))?"active":""?>" ><a href="{{URL::to('admin/plan')}}" >Plan List</a></li>
                </ul>
            </li> -->
            <!-- Contact -->
           <li class="sub-menu">
               <a href="javascript:;" class="<?= Request::is('admin/contact') ? "active" : "" ?>">
                 <i class="fa fa-user"></i>
                   <span>Contacts</span>
               </a>
               <ul class="sub">
                   <li class="<?=(Request::is('admin/contact'))?"active":""?>" ><a  href="{{URL::to('admin/contact')}}" >View Contact</a></li>
               </ul>
           </li>
        </ul>
        <!-- sidebar menu end-->
    </div>
</aside>

<%@ Control Language="C#" AutoEventWireup="true" %>

<ul class="nav navbar-nav">
    <li class="dropdown">

        <a href="https://mhginsurance.com/Services" aria-haspopup="true">
            <span>Services</span>
            <i class="caret"></i>
        </a>

        <a class="expand-arrow" role="button">
            <span id="arrowDown" class="arrow">
                <svg viewBox="0 0 21 12">
                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="/portals/_default/Skins/MHGWeb/Images/icons.svg?#iconArrowDown"></use>
                </svg>
            </span>
            <span id="arrowUp" class="arrow" style="display: none;">
                <svg viewBox="0 0 21 12">
                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="/portals/_default/Skins/MHGWeb/Images/icons.svg?#iconArrowUp"></use>
                </svg>
            </span>
        </a>

        <div class="dropdown-menu services">

            <div class="text">
                <h6>Learn more about:</h6>
                <ul role="menu">
                    <li><a href="https://mhginsurance.com/Services/MarineCrewInsurance">Marine Crew Insurance</a></li>
                    <li><a href="https://mhginsurance.com/Services/LifeHealthInsurance">Life &amp; Health Insurance</a></li>
                    <li><a href="https://mhginsurance.com/Services/TravelInsurance">Travel Insurance</a></li>
                    <li><a href="https://mhginsurance.com/Services/BusinessInsurance">Business Insurance</a></li>
                    <li><a href="https://mhginsurance.com/Services/ExpatriateInsurance">Expatriate Insurance</a></li>
                </ul>
                <a href="/Contact" class="a-md">Let Us Help Customize Your Plan</a>
            </div>
            <!-- /.text -->

            <%--<img src="/Portals/_default/Skins/MHGWeb/Images/services-menu.jpg" alt="Boat" />--%>

        </div>
        <!-- /.dropdown-menu -->

    </li>

    <li><a href="https://mhginsurance.com/About" aria-haspopup="true"><span>About</span></a></li>

    <li class="dropdown">

        <a href="https://mhginsurance.com/Contact">
            <span>Contact</span>
            <i class="caret"></i>
        </a>

        <div class="dropdown-menu contact">

            <div class="text">
                <p>Calls are answered in English by our offices in Fort Lauderdale, Hamburg and the Isle of Man.</p>
                <h6>U.S.</h6>
                <a href="tel:+19543629838" class="a-lg">+1 954 362 9838</a>
                <h6>Europe</h6>
                <a href="tel:+44(0)1624678668" class="a-lg">+44 (0) 1624 678668 </a>

                <div class="address">
                    <h6>MHG Services Inc.</h6>
                    <address>
                        1600 SE 17th Street, Suite 410<br>
                        Fort Lauderdale, FL 33316
                    </address>
                    <a href="tel:+18772787400" class="a-sm">Tel: 1 (877) 278-7400</a>
                </div>
                <!-- /.address-->

                <div class="address">
                    <h6>MHG Ocean Benefits Ltd</h6>
                    <address>
                        21 a-23 Athol Street<br>
                        Douglas, Isle of Man, IM1 1LB, British Isles
                    </address>
                    <a href="tel:+4401624 678668" class="a-sm">Tel: +44 (0) 1624 678668</a>
                </div>
                <!-- /.address -->
            </div>
            <!-- /.text -->

            <%--<img src="/Portals/_default/Skins/MHGWeb/Images/contact-menu.jpg" alt="MHG Crew on a Boat" />--%>

        </div>
        <!-- /.dropdown-menu -->

    </li>
	
	<li><a href="https://mhginsurance.com/About/MeetTheTeam" aria-haspopup="true"><span>Meet the Team</span></a></li>
</ul>

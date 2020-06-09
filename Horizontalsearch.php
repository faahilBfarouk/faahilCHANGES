<section class="horizontal-search">
    <div class="container">
        <h1 class="nocontent outline">--- Search form  ---</h1>
        <div class=""> 
            <div class="search-form"> 
                <form action="vehiculs.html"  method="get" class="form-inline">   
                    <div class="search-form-content">
                        <div class="search-form-field">  
                            <div class="form-group col-xs-12 col-sm-3 col-md-3">
                                <div class="label-select">
                                    <select class="form-control" name="s_location">
                                        <option>Any Manufacturer</option>
                                        <option>Audi</option>
                                        <option>Mercedes-Benz</option>
                                        <option>BMW</option>
                                        <option>Lexus</option>
                                        <option>Lincoln</option>
                                        <option>Ford</option>
                                        <option>Fiat</option>
                                        <option>Dodge</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group col-xs-12 col-sm-3 col-md-3">
                                <div class="label-select">  
                                    <select class="form-control" name="anymodule">
                                        <option>Any Model </option>
                                        <option value="1">R8</option>
                                        <option value="2">S500</option>
                                        <option value="3">540i</option>
                                        <option value="4">RX300</option>
                                        <option value="5">Navigator</option>
                                        <option value="6">Taurus</option>
                                        <option value="7">Doblo</option>
                                        <option value="8">Viper</option>
                                    </select>
                                </div>
                            </div>  

                            <div class="form-group col-xs-12 col-sm-3 col-md-3">
                                <div class="label-select">
                                    <select class="form-control" name="s_location"> 
                                        <option>Any locations</option>
                                        <option>Central New York</option>
                                        <option>GreenVille</option>
                                        <option>Long Island</option>
                                        <option>New York City</option>
                                        <option>West Side</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group col-xs-12 col-sm-3 col-md-3">
                                <div class="label-select"> 
                                    <select class="form-control" name="s_statu">
                                        <option>Any Status </option>
                                        <option value="damaged">Damaged</option>
                                        <option value="new">New</option>
                                        <option value="semi-new">Semi-New</option>
                                        <option value="used">Used</option>
                                    </select>
                                </div>
                            </div> 

                            <div class="form-group col-xs-12 col-sm-3 col-md-3">                                        
                            </div>
                            <div class="form-group col-xs-12 col-sm-3 col-md-3">
                                <span class="gprice-label">Price Range</span>
                                <input type="text" class="span2" value="" data-slider-min="0" 
                                       data-slider-max="60000" data-slider-step="5" 
                                       data-slider-value="[0,60000]" id="price-range" >
                            </div>
                            <div class="form-group col-xs-12 col-sm-3 col-md-3">
                                <span class="garea-label">Mileage Range</span> 
                                <input type="text" class="span2" value="" data-slider-min="0" 
                                       data-slider-max="60000" data-slider-step="5" 
                                       data-slider-value="[50,60000]" id="vehicul-geo" >
                            </div>                                            
                        </div> 
                    </div>
                    <div class="search-form-submit">
                        <button type="submit" class="btn-search">Search</button>
                    </div>
                </form>
            </div><!-- Services Sec -->

        </div>
    </div>
</section>
<div class="container imageloc">
    <div class="row">
      <div class="col-md-12">
        <!--<img class="d-block img-responsive imagecenter w-100" src="<?php echo base_url().$this->config->item('main_back'); ?>" alt="Main_Back">-->
        <?php if(isset($active_surveys) && $active_surveys != null): ?>
          <div class="floatdiv" style="width: 95%;left: 2.5%; transform: translateY(5%)">
          <h2 class="introtext">The results of this survey will teach us insights on how we can serve you better. <br><br>
Yes, we realize how precious your time is. That's why we made sure this survey will
only take 30 seconds or less.<br><br>
(really, we timed it!)<br><br>
Rate us: 1 BAD to 5 BEST<br><br></h2>
          <div style="width: 30%;margin: 0 auto;">
            <?php foreach($active_surveys as $survey): ?>
<!--              <a href="<?php echo base_url() . "questions/" . $survey->slug; ?>" class="list-group-item" style="text-align: center">
                <?php echo $survey->title; ?>
                <span class="glyphicon glyphicon-chevron-right pull-center"></span>
              </a>-->
              
              <button id="demo" type="submit" class="btn btn-lg btn-success pull-center" 
                      onclick="redirectOnClick('<?php echo base_url() . "questions/" . $survey->slug; ?>')" 
                      style="height:100%;width:100%;font-size:5vw;border-radius: 25px;">
                          <?php echo $survey->title; ?>
              </button>
              
            <?php endforeach; ?>
          </div>
        <?php else: ?>
          <div class="alert alert-danger text-center" role="alert">
            <strong>
              UH OH!
            </strong>
              It seems there are no surveys available.
          </div>
        <?php endif; ?>
          </div>
     </div>
    </div>
    
  </div>
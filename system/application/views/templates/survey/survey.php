<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="false">
  <?php if(isset($valid_survey) && $valid_survey && isset($show_questions) && $show_questions): ?>
    <ol class="carousel-indicators">
    <?php $j = 0 ?>
    <?php foreach($questions as $question): ?>
      <?php if($j == 0): ?>
      <li data-target="#carouselExampleIndicators" data-slide-to="<?php echo $j ?>" class="active"></li>
      <?php else : ?>
      <li data-target="#carouselExampleIndicators" data-slide-to="<?php echo $j ?>"></li>
      <?php endif; ?>
      <?php $j++ ?>
    <?php endforeach; ?>
      <li data-target="#carouselExampleIndicators" data-slide-to="<?php echo $j ?>"></li>
    </ol>
    <form role="form" method="post" class="survey-form clearfix">
      <div class="carousel-inner">
    <?php $i = 0 ?>
    <?php foreach($questions as $question): ?>
      <?php if($i == 0): ?>
        <div class="carousel-item active">
      <?php else : ?>
        <div class="carousel-item">
      <?php endif; ?>
          <img class="d-block w-100" src="<?php echo base_url().$this->config->item('img_path').$question->helper_text; ?>" alt="Sample <?php $question->id ?>" style="<?php echo $this->config->item('carousel_fit'); ?>">
      <?php if($question->question_type == 0): ?>
          <div class="carousel-caption d-none d-md-block">                          
            <h1 style="text-shadow: 2px 2px 4px #000000;"><?php echo $question->question_text; ?></h1>
              <div class="form-group">
                <span class="rating" id="ratingentry">
                  <ul>
                    <?php foreach($question->options as $option): ?>
                    <li><label for="rating_<?php echo $option->id ?>"><i class="fas fa-star fa-5x" aria-hidden="true"></i></label>
                        <input type="radio" name="ratings<?php echo $i+1 ?>" id="rating_<?php echo $option->id ?>" value="<?php echo $option->id ?>" 
                            <?php echo ((isset($_POST["ratings".$i+1]) && $_POST["ratings".$i+1] == $option->id) ? "checked" : "" ); ?>/>
                        <span style="color:white;text-shadow: 2px 2px 4px #000000;"><?php echo $option->option_text ?></span>
                    </li>
                    <?php endforeach; ?>
                    </ul>
                </span>
              </div>
          </div>
      <?php endif; ?>
        </div>
      <?php $i++ ?>
      <?php endforeach; ?>
          <div class="carousel-item">
            <img class="d-block w-100" src="<?php echo base_url().$this->config->item('button_back'); ?>" alt="Submit Button" style="<?php echo $this->config->item('carousel_fit'); ?>">
            <div class="carousel-caption d-none d-md-block" style="height:50%;width:50%;left:25%;">
              <button id="demo" type="submit" class="btn btn-lg btn-success pull-center" style="height:100%;width:100%;font-size:5vw;border-radius: 25px;">Submit Response</button>
            </div>              
          </div>
        </div>          
     
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev" >
          <div style="text-shadow: 2px 2px 4px #000000;">Previous</div>
            <span class="carousel-control-prev-icon" aria-hidden="true" style=" height: 40%; width:40%;"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next" >
            <span class="carousel-control-next-icon" aria-hidden="true" style=" height: 40%; width:40%;"></span>
            <span class="sr-only">Next</span>
            <div style="text-shadow: 2px 2px 4px #000000;">Next</div>
          </a>
       </div>
    </form>
    <div class="col-md-12">
  <?php elseif(isset($valid_survey) && $valid_survey && !(isset($survey_errors) && $survey_errors)): ?>
      <h2 class="introtext" style="text-align: center"><br>All Done! <br><br>
         Thank you for completing the survey.<br><br>
      </h2>
      <?php header("Refresh: 2; url=".base_url()); ?>
   <?php endif; ?>
    </div>
</div>


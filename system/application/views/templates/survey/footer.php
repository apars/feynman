		<footer>
      <div class="container">
        <p class="text-muted">
            <?php if($active_surveys != ""): ?>
              <?php foreach($active_surveys as $survey): ?>
                <?php echo getFooterContent($survey->slug); ?>
              <?php endforeach; ?>
            <?php endif; ?>
        </p>
      </div>
		</footer>
		<!--<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/custom.js"></script>-->
                <script type="text/javascript" src="<?php echo base_url().$this->config->item('jQuery_js'); ?>"></script>
                <script type="text/javascript" src="<?php echo base_url().$this->config->item('bootstrap_js'); ?>"></script>
                <script type="text/javascript" src="<?php echo base_url().$this->config->item('rating_js'); ?>"></script>
                <script type="text/javascript" src="<?php echo base_url().$this->config->item('survey_js'); ?>"></script>
                
	</body>
</html>
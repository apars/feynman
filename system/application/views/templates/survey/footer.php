        <footer>
            <div class="container" >
                <p class="text-muted">
                <div class="div-left" style="display: inline-block;"><p class="footer-text">Copyright (C) 2018 <?php echo $this->config->item('company_name'); ?> All rights reserved.
                <?php if($active_surveys != ""): ?>
                  <?php foreach($active_surveys as $survey): ?>
                    <?php echo getFooterContent($survey->slug); ?>
                  <?php endforeach; ?>
                <?php endif; ?>
                </p></div>
                <div class="div-right" style="display: inline-block;"><p class="footer-text">Follow Us
                    <a href="#" class="fab fa-facebook"></a>
                    <a href="#" class="fab fa-twitter"></a>
                    <a href="#" class="fab fa-google"></a>
                    <a href="#" class="fab fa-instagram"></a> </p>
            <!--<strong>Posted by: <?php echo $this->config->item('posted_by'); ?> Contact information: <a href="mailto:<?php echo $this->config->item('posted_email'); ?>"><?php echo $this->config->item('posted_email'); ?></a>.</strong>-->
                </div>
            </div>
        </footer>
        <!--<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/custom.js"></script>-->
        <script type="text/javascript" src="<?php echo base_url().$this->config->item('jQuery_js'); ?>"></script>
        <script type="text/javascript" src="<?php echo base_url().$this->config->item('bootstrap_js'); ?>"></script>
        <script type="text/javascript" src="<?php echo base_url().$this->config->item('rating_js'); ?>"></script>
        <script type="text/javascript" src="<?php echo base_url().$this->config->item('survey_js'); ?>"></script>
    </body>
</html>
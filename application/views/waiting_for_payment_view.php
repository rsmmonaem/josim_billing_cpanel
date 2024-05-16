<section class="section-header u-padding-lg pb-3 text-center">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="heading">Waiting For Payment</h1>
                <small class="text-warning">Please make sure that your browser accepts third-party cookies.</small>
                <h2 class="heading--sub">
                    <iframe src="<?= $response->ipn_callback_url ?>" height="600" width="400" title="Payment Iframe"></iframe>
                </h2>
            </div>
        </div>
    </div>
</section>

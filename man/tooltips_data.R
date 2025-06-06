tooltip_data = list(
  single_omics = list( # Sublists based on R modules / namespaces
    # Upload method
    upload_method = "Input type: \n\t-File upload: for new experiments by uploading the user data \n\t-iSODA file: upload an iSODA single-omics file downloaded through the app \n\t-iSODA UUID: load a single-omics experiment from the server using a UUID key produced by iSODA",
    load_single_omics = "Load the experiment using the selected method. Once loaded, the input files cannot be altered",
    
    # Omics file
    omics_file = ".isoda file produced by iSODA",
    
    # Omics uuid key
    omics_uuid = "UUID key to connect to a single omics experiment stored on the server. These are provided through the dedicated iSODA tab",
    
    # Metadata
    file_meta = "Browse for the sample annotations file (recommended: tsv, csv, csv2 or excel first sheet)",
    meta_file_format = "File format: \n\tWide = samples as rows, annotations as columns \n\tLong: annotations as rows, samples as columns \nDefault is Wide",
    select_meta_table = "Selected table to display",
    download_metatable = "Download the displayed table",
    head_sample_annoations = "Only display the first rows and columns from the table. \nTypically this will be turned on for measurement data as supplying a table with more than 10K columns will significantly slow down the table rendering",
    select_id_meta = "Select ID column for samples (IDs must be unique)",
    sample_annotations_group_col = "Main sample groups to compare (at least two groups and two samples per group)",
    sample_annotations_type_col = "Column containing text pattern that allow to match blank, QC and pool samples",
    sample_annotations_batch_col = "Batch column, if no batch column is found, samples are assumed from the same batch. Blanks, QCs and pools must also have a batch value for filtering",
    sample_annotations_blank_pattern = "Substring to be searched in the type column to identify blanks",
    sample_annotations_qc_pattern = "Substring to be searched in the type column to identify QCs",
    sample_annotations_pool_pattern = "Substring to be searched in the type column to identify Pools",
    non_samples_selection = "Sample filtering - select non-samples (all three selected by default)",
    selection_manual = "Manual selection of samples",
    exclusion_meta_col = "Sample annotation column from which to select samples",
    exclusion_meta_val = "Select samples based on a specific value within the selected column",
    exclusion_meta_row = "Samples selected",
    selection_drop = "Sample filtering - drop selection",
    selection_keep = "Sample filtering - keep selection",
    clear_filters = "Sample filtering - clear selection",
    reset_meta = "Sample filtering - reset sample table",
    
    # Data
    file_data = "Browse for the measurements file (only numeric, recommended: tsv, csv, csv2 or excel first sheet)",
    data_file_format = "File format: \n\tWide = samples as rows, features as columns \n\tLong: features as rows, samples as columns \nDefault is Wide",
    select_data_table = "Selected table to display",
    download_datatable = "Download the displayed table",
    head_measurement_data = "Only display the first rows and columns from the table. \nTypically this will be turned on for measurement data as supplying a table with more than 10K columns will significantly slow down the table rendering",
    # select_id_data = "Select ID column for samples (IDs must be unique)",
    select_feature_type = "Select the feature ID type (relevant for proteomics, transcriptomics and genomics data",
    operation_order = "Order in which Imputation, Batch correction and Filtering should be run. Removing = not running",
    batch_effect_correction = "Performs batch effect correction using ComBat, either without reference (No control), with reference samples (Pool or QC), or skipped (None).",
    na_imputation = "Replaces missing feature values by either their respective minimum, mean, median or maximum value. None = no imputation",
    blank_multiplier = "Tags samples with feature signals not significantly above blanks: sample signal > (mean(blank signal) * blank multiplier)",
    sample_threshold = "Sets the minimum percentage of samples tagged above blank signals for a feature to be kept, e.g. for 0.8: for feature A to be kept, 80% of samples must have signals tagged above blanks for that feature to be kept",
    group_threshold = "Alternative to the Sample threshold: operates on sample groups instead of all samples to also salvage features which might be produced only in one specific group",
    normalise_to_col = "Normalizes signals by dividing them by a column value in the sample annotations table (numeric)",
    feature_col_selection = "Choose a column from the feature table (if provided or if lipidomics) to start selecting features based on metadata",
    feature_value = "Select features based on a specific value within the selected column",
    feature_selection = "Manual selection of features",
    drop_cols = "Feature filtering - drop selection",
    keep_cols = "Feature filtering - keep selection",
    clear_data_filters = "Feature filtering - clear selection",
    reset_feat_table = "Feature filtering - reset feature table",
    
    # Features
    file_feat = "Browse for the feature annotations file (recommended: tsv, csv, csv2 or excel first sheet)",
    feat_file_format = "File format: \n\tLong: features as rows, annotations as columns \n\tWide = annotations as rows, features as columns \nDefault is Long",
    select_id_feat = "Select ID column for features (IDs must be unique)",
    feat_table_select = "Selected table to display",
    download_feature_table = "Download the displayed table",
    head_feature_annotations = "Only display the first rows and columns from the table. \nTypically this will be turned on for measurement data as supplying a table with more than 10K columns will significantly slow down the table rendering",
    help_sparse_annotations = "Character delimited annotations within a column in the features table.
    \t-Sparse annotations are in essence a new table stored within a column, but with most of the data missing and only the non-missing values reported as a character separated text.
    \t-This type of data (like Gene Ontologies) can be understood by iSODA here by specifying the delimiter below and running either Add sparse table for one specific column, or Parse all columns to run this on all columns with the specified delimiter. 
    \t-Once the sparse table is generated, these complex annotations can be displayed on the features in the volcano plot, PCA, heatmap and feature correlation.
    \t-These can also be used in functional analysis as ontology terms would be used.
    \t-Make sure the delimiter used is not a common character in your data.",
    sparse_feature_column = "Select a column from the feature table to produce a sparse table",
    sparse_delimiter = "Subdelimiter used within the feature column to produce sparse tables. 
    \t-Delimiter must not be the same as the table delimiter (csv: do not use comma)
    \t-Delimiter must not be a common character in the sparse annotations to avoid malforming sparse annotations",
    add_sparse_single = "Generate sparse annotations from the selected feature column using the sparse delimiter",
    add_sparse_all = "Generate sparse tables from all columns containing the sparse delimiter",
    reset_sparse_tables = "Remove all sparse tables",
    
    # Functional analysis
    gseaprep_table_select = "Data used as input",
    gseaprep_group_col = "Sample metadata column from which to pick groups",
    gseaprep_groups = "Two groups of samples to compare",
    gseaprep_test = "Test applied to features comparing the two sample groups",
    gseaprep_adjustment = "p-value adjustment to for the statistical test",
    gseaprep_method = "Fold change calculation function for the two groups",
    fa_feature_selection = "Select features for the functional analysis input. \n\t-Statistical selection: only for ORA, will be ignored in EA. Uses the statistical results from above to select features. \n\t-User selection: uses feature metadata to select features. If no such table was provided, feature metadata can be added via the volcano, heatmap or feature correlation plot. Otherwise, all features are passed on.",
    gseaprep_pval = "Keep only features below this p-value (ORA only, ignored in EA)",
    or_fc_threshold = "Keep only features above this fold change (ORA only, ignored in EA)",
    fa_feature_col = "Column from the feature annotations table from which to select features (if none, all are passed, or alternatively, use volcano, heatmap or feature correlation plot to populate the table",
    fa_feature_values = "Keep features associated to this/these annotations",
    gsea_go = "Feature sets (equivalent to gene sets) to investigate. Default GeneOntology genesets are provided by iSODA for the gene-based data. Custom ontologies can be provided via the feature annotation table:\n\t-Typically these are polymorphic relationships where one feature can be associated to 0, one or multiple feature sets.\n\t-When a feature is associated to multiple feature sets, they can be reported as a pipe-separated string.",
    gsea_adjustment = "p-value adjutment for the enrichment analysis test",
    ea_min_size = "Minimum features found per set to be valid",
    ea_max_size = "Maximum features found per set to be valid",
    gsea_pval = "p-value threshold for the feature sets via the enrichment analysis test",
    ea_seed = "Seed to ensure reproductibility during enrichment analysis",
    download_ea_feature_table = "Download the features used as input for the enrichment analysis along with the associated statistical values",
    download_ea_table = "Download the enrichment analysis results, i.e. the feature sets and the associated values",
    or_go_ont = "Feature sets (equivalent to gene sets) to investigate. Default GeneOntology genesets are provided by iSODA for the gene-based data. Custom ontologies can be provided via the feature annotation table:\n\t-Typically these are polymorphic relationships where one feature can be associated to 0, one or multiple feature sets.\n\t-When a feature is associated to multiple feature sets, they can be reported as a pipe-separated string.",
    or_pval_adjustment = "p-value adjutment for the over-representation analysis test",
    ora_min_gssize = "Minimum features found per set to be valid",
    ora_max_gssize = "Maximum features found per set to be valid",
    or_pval_cutoff = "p-value threshold for the feature sets via the over-representation analysis test",
    or_qval_cutoff = "q-value threshold for the feature sets via the over-representation analysis test",
    ora_seed = "Seed to ensure reproductibility during over-representation analysis",
    download_ora_feature_table = "Download the features used as input for the over-representation analysis along with the associated statistical values",
    download_ora_table = "Download the over-representation analysis results, i.e. the feature sets and the associated values",
    
    # Visualization
    volcano_plot_sparse_feat = "Pick one or more annotations from the sparse table selected above to color features according to the number of sparse features they are associated with. Sparse tables are generated in the Features tab's Sparse annotations section.",
    heatmap_sparse_feat = "Pick one or more annotations from the sparse table selected above to color features according to the number of sparse features they are associated with. Sparse tables are generated in the Features tab's Sparse annotations section.",
    feature_correlation_sparse_feat = "Pick one or more annotations from the sparse table selected above to color features according to the number of sparse features they are associated with. Sparse tables are generated in the Features tab's Sparse annotations section.",
    pca_sparse_feat = "Pick one or more annotations from the sparse table selected above to color features according to the number of sparse features they are associated with. Sparse tables are generated in the Features tab's Sparse annotations section.",
    heatmap_sparse_table = "Select a sparse table generated from the Feature tab's Sparse annotations section to map ontology type annotations on the features",
    feature_correlation_sparse_table = "Select a sparse table generated from the Feature tab's Sparse annotations section to map ontology type annotations on the features"
  ),
  mofa = list(
    data_scale_views = "If views have different ranges/variances, it is good practice to scale each view to unit variance.",
    data_scale_groups = "If groups have different ranges/variances, it is good practice to scale each group to unit variance.",
    mofa_seed = "Seed to ensure reproductibility during MOFA",
    model_num_factors = "Number of factors to compute",
    model_spikeslab_factors = "Use spike-slab sparsity prior in the factors",
    model_ard_factors = "Use ARD prior in the factors",
    model_spikeslab_weights = "Use spike-slab sparsity prior in the weights",
    model_ard_weights = "Use ARD prior in the weights",
    training_iterations = "Maximum number of iterations. Convergence is assessed using the ELBO statistic",
    training_start_elbo = "The first iteration to compute the ELBO",
    training_stochastic = "Whether to use stochastic variational inference (only required for very big data sets)",
    training_convergence_mode = "convergence criteria, either 'fast', 'medium' or slow', corresponding to 0.0005%, 0.00005% or 0.000005% deltaELBO change",
    training_freq_elbo = "The first iteration to compute the ELBO"
    
  )
)
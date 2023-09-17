class AllDataModel {
  String? excType;
  int? sessionExpired;
  List<Data>? data;

  AllDataModel({this.excType, this.sessionExpired, this.data});

  AllDataModel.fromJson(Map<String, dynamic> json) {
    excType = json['exc_type'];
    sessionExpired = json['session_expired'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['exc_type'] = this.excType;
    data['session_expired'] = this.sessionExpired;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? name;
  String? creation;
  String? modified;
  String? modifiedBy;
  String? owner;
  int? docstatus;
  int? idx;
  String? namingSeries;
  String? itemCode;
  String? itemName;
  String? itemGroup;
  String? stockUom;
  int? disabled;
  int? allowAlternativeItem;
  int? isStockItem;
  int? hasVariants;
  int? includeItemInManufacturing;
  int? openingStock;
  int? valuationRate;
  int? standardRate;
  int? isFixedAsset;
  int? autoCreateAssets;
  int? isGroupedAsset;
  Null? assetCategory;
  Null? assetNamingSeries;
  int? overDeliveryReceiptAllowance;
  int? overBillingAllowance;
  String? image;
  String? description;
  Null? brand;
  int? shelfLifeInDays;
  String? endOfLife;
  String? defaultMaterialRequestType;
  String? valuationMethod;
  Null? warrantyPeriod;
  int? weightPerUnit;
  Null? weightUom;
  int? allowNegativeStock;
  int? hasBatchNo;
  int? createNewBatch;
  Null? batchNumberSeries;
  int? hasExpiryDate;
  int? retainSample;
  int? sampleQuantity;
  int? hasSerialNo;
  String? serialNoSeries;
  Null? variantOf;
  String? variantBasedOn;
  Null? purchaseUom;
  int? minOrderQty;
  int? safetyStock;
  int? isPurchaseItem;
  int? leadTimeDays;
  int? lastPurchaseRate;
  int? isCustomerProvidedItem;
  Null? customer;
  int? deliveredBySupplier;
  int? enableDeferredExpense;
  Null? deferredExpenseAccount;
  int? noOfMonthsExp;
  String? countryOfOrigin;
  Null? customsTariffNumber;
  Null? salesUom;
  int? grantCommission;
  int? isSalesItem;
  int? maxDiscount;
  int? enableDeferredRevenue;
  Null? deferredRevenueAccount;
  int? noOfMonths;
  int? inspectionRequiredBeforePurchase;
  Null? qualityInspectionTemplate;
  int? inspectionRequiredBeforeDelivery;
  int? isSubContractedItem;
  String? defaultBom;
  String? customerCode;
  Null? defaultItemManufacturer;
  Null? defaultManufacturerPartNo;
  int? publishedInWebsite;
  int? totalProjectedQty;
  Null? nUserTags;
  Null? nComments;
  Null? nAssign;
  Null? nLikedBy;
  String? gstHsnCode;
  int? isNilExempt;
  int? isNonGst;

  Data(
      {this.name,
      this.creation,
      this.modified,
      this.modifiedBy,
      this.owner,
      this.docstatus,
      this.idx,
      this.namingSeries,
      this.itemCode,
      this.itemName,
      this.itemGroup,
      this.stockUom,
      this.disabled,
      this.allowAlternativeItem,
      this.isStockItem,
      this.hasVariants,
      this.includeItemInManufacturing,
      this.openingStock,
      this.valuationRate,
      this.standardRate,
      this.isFixedAsset,
      this.autoCreateAssets,
      this.isGroupedAsset,
      this.assetCategory,
      this.assetNamingSeries,
      this.overDeliveryReceiptAllowance,
      this.overBillingAllowance,
      this.image,
      this.description,
      this.brand,
      this.shelfLifeInDays,
      this.endOfLife,
      this.defaultMaterialRequestType,
      this.valuationMethod,
      this.warrantyPeriod,
      this.weightPerUnit,
      this.weightUom,
      this.allowNegativeStock,
      this.hasBatchNo,
      this.createNewBatch,
      this.batchNumberSeries,
      this.hasExpiryDate,
      this.retainSample,
      this.sampleQuantity,
      this.hasSerialNo,
      this.serialNoSeries,
      this.variantOf,
      this.variantBasedOn,
      this.purchaseUom,
      this.minOrderQty,
      this.safetyStock,
      this.isPurchaseItem,
      this.leadTimeDays,
      this.lastPurchaseRate,
      this.isCustomerProvidedItem,
      this.customer,
      this.deliveredBySupplier,
      this.enableDeferredExpense,
      this.deferredExpenseAccount,
      this.noOfMonthsExp,
      this.countryOfOrigin,
      this.customsTariffNumber,
      this.salesUom,
      this.grantCommission,
      this.isSalesItem,
      this.maxDiscount,
      this.enableDeferredRevenue,
      this.deferredRevenueAccount,
      this.noOfMonths,
      this.inspectionRequiredBeforePurchase,
      this.qualityInspectionTemplate,
      this.inspectionRequiredBeforeDelivery,
      this.isSubContractedItem,
      this.defaultBom,
      this.customerCode,
      this.defaultItemManufacturer,
      this.defaultManufacturerPartNo,
      this.publishedInWebsite,
      this.totalProjectedQty,
      this.nUserTags,
      this.nComments,
      this.nAssign,
      this.nLikedBy,
      this.gstHsnCode,
      this.isNilExempt,
      this.isNonGst});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    creation = json['creation'];
    modified = json['modified'];
    modifiedBy = json['modified_by'];
    owner = json['owner'];
    docstatus = json['docstatus'];
    idx = json['idx'];
    namingSeries = json['naming_series'];
    itemCode = json['item_code'];
    itemName = json['item_name'];
    itemGroup = json['item_group'];
    stockUom = json['stock_uom'];
    disabled = json['disabled'];
    allowAlternativeItem = json['allow_alternative_item'];
    isStockItem = json['is_stock_item'];
    hasVariants = json['has_variants'];
    includeItemInManufacturing = json['include_item_in_manufacturing'];
    openingStock = json['opening_stock'];
    valuationRate = json['valuation_rate'];
    standardRate = json['standard_rate'];
    isFixedAsset = json['is_fixed_asset'];
    autoCreateAssets = json['auto_create_assets'];
    isGroupedAsset = json['is_grouped_asset'];
    assetCategory = json['asset_category'];
    assetNamingSeries = json['asset_naming_series'];
    overDeliveryReceiptAllowance = json['over_delivery_receipt_allowance'];
    overBillingAllowance = json['over_billing_allowance'];
    image = json['image'];
    description = json['description'];
    brand = json['brand'];
    shelfLifeInDays = json['shelf_life_in_days'];
    endOfLife = json['end_of_life'];
    defaultMaterialRequestType = json['default_material_request_type'];
    valuationMethod = json['valuation_method'];
    warrantyPeriod = json['warranty_period'];
    weightPerUnit = json['weight_per_unit'];
    weightUom = json['weight_uom'];
    allowNegativeStock = json['allow_negative_stock'];
    hasBatchNo = json['has_batch_no'];
    createNewBatch = json['create_new_batch'];
    batchNumberSeries = json['batch_number_series'];
    hasExpiryDate = json['has_expiry_date'];
    retainSample = json['retain_sample'];
    sampleQuantity = json['sample_quantity'];
    hasSerialNo = json['has_serial_no'];
    serialNoSeries = json['serial_no_series'];
    variantOf = json['variant_of'];
    variantBasedOn = json['variant_based_on'];
    purchaseUom = json['purchase_uom'];
    minOrderQty = json['min_order_qty'];
    safetyStock = json['safety_stock'];
    isPurchaseItem = json['is_purchase_item'];
    leadTimeDays = json['lead_time_days'];
    lastPurchaseRate = json['last_purchase_rate'];
    isCustomerProvidedItem = json['is_customer_provided_item'];
    customer = json['customer'];
    deliveredBySupplier = json['delivered_by_supplier'];
    enableDeferredExpense = json['enable_deferred_expense'];
    deferredExpenseAccount = json['deferred_expense_account'];
    noOfMonthsExp = json['no_of_months_exp'];
    countryOfOrigin = json['country_of_origin'];
    customsTariffNumber = json['customs_tariff_number'];
    salesUom = json['sales_uom'];
    grantCommission = json['grant_commission'];
    isSalesItem = json['is_sales_item'];
    maxDiscount = json['max_discount'];
    enableDeferredRevenue = json['enable_deferred_revenue'];
    deferredRevenueAccount = json['deferred_revenue_account'];
    noOfMonths = json['no_of_months'];
    inspectionRequiredBeforePurchase =
        json['inspection_required_before_purchase'];
    qualityInspectionTemplate = json['quality_inspection_template'];
    inspectionRequiredBeforeDelivery =
        json['inspection_required_before_delivery'];
    isSubContractedItem = json['is_sub_contracted_item'];
    defaultBom = json['default_bom'];
    customerCode = json['customer_code'];
    defaultItemManufacturer = json['default_item_manufacturer'];
    defaultManufacturerPartNo = json['default_manufacturer_part_no'];
    publishedInWebsite = json['published_in_website'];
    totalProjectedQty = json['total_projected_qty'];
    nUserTags = json['_user_tags'];
    nComments = json['_comments'];
    nAssign = json['_assign'];
    nLikedBy = json['_liked_by'];
    gstHsnCode = json['gst_hsn_code'];
    isNilExempt = json['is_nil_exempt'];
    isNonGst = json['is_non_gst'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['creation'] = this.creation;
    data['modified'] = this.modified;
    data['modified_by'] = this.modifiedBy;
    data['owner'] = this.owner;
    data['docstatus'] = this.docstatus;
    data['idx'] = this.idx;
    data['naming_series'] = this.namingSeries;
    data['item_code'] = this.itemCode;
    data['item_name'] = this.itemName;
    data['item_group'] = this.itemGroup;
    data['stock_uom'] = this.stockUom;
    data['disabled'] = this.disabled;
    data['allow_alternative_item'] = this.allowAlternativeItem;
    data['is_stock_item'] = this.isStockItem;
    data['has_variants'] = this.hasVariants;
    data['include_item_in_manufacturing'] = this.includeItemInManufacturing;
    data['opening_stock'] = this.openingStock;
    data['valuation_rate'] = this.valuationRate;
    data['standard_rate'] = this.standardRate;
    data['is_fixed_asset'] = this.isFixedAsset;
    data['auto_create_assets'] = this.autoCreateAssets;
    data['is_grouped_asset'] = this.isGroupedAsset;
    data['asset_category'] = this.assetCategory;
    data['asset_naming_series'] = this.assetNamingSeries;
    data['over_delivery_receipt_allowance'] = this.overDeliveryReceiptAllowance;
    data['over_billing_allowance'] = this.overBillingAllowance;
    data['image'] = this.image;
    data['description'] = this.description;
    data['brand'] = this.brand;
    data['shelf_life_in_days'] = this.shelfLifeInDays;
    data['end_of_life'] = this.endOfLife;
    data['default_material_request_type'] = this.defaultMaterialRequestType;
    data['valuation_method'] = this.valuationMethod;
    data['warranty_period'] = this.warrantyPeriod;
    data['weight_per_unit'] = this.weightPerUnit;
    data['weight_uom'] = this.weightUom;
    data['allow_negative_stock'] = this.allowNegativeStock;
    data['has_batch_no'] = this.hasBatchNo;
    data['create_new_batch'] = this.createNewBatch;
    data['batch_number_series'] = this.batchNumberSeries;
    data['has_expiry_date'] = this.hasExpiryDate;
    data['retain_sample'] = this.retainSample;
    data['sample_quantity'] = this.sampleQuantity;
    data['has_serial_no'] = this.hasSerialNo;
    data['serial_no_series'] = this.serialNoSeries;
    data['variant_of'] = this.variantOf;
    data['variant_based_on'] = this.variantBasedOn;
    data['purchase_uom'] = this.purchaseUom;
    data['min_order_qty'] = this.minOrderQty;
    data['safety_stock'] = this.safetyStock;
    data['is_purchase_item'] = this.isPurchaseItem;
    data['lead_time_days'] = this.leadTimeDays;
    data['last_purchase_rate'] = this.lastPurchaseRate;
    data['is_customer_provided_item'] = this.isCustomerProvidedItem;
    data['customer'] = this.customer;
    data['delivered_by_supplier'] = this.deliveredBySupplier;
    data['enable_deferred_expense'] = this.enableDeferredExpense;
    data['deferred_expense_account'] = this.deferredExpenseAccount;
    data['no_of_months_exp'] = this.noOfMonthsExp;
    data['country_of_origin'] = this.countryOfOrigin;
    data['customs_tariff_number'] = this.customsTariffNumber;
    data['sales_uom'] = this.salesUom;
    data['grant_commission'] = this.grantCommission;
    data['is_sales_item'] = this.isSalesItem;
    data['max_discount'] = this.maxDiscount;
    data['enable_deferred_revenue'] = this.enableDeferredRevenue;
    data['deferred_revenue_account'] = this.deferredRevenueAccount;
    data['no_of_months'] = this.noOfMonths;
    data['inspection_required_before_purchase'] =
        this.inspectionRequiredBeforePurchase;
    data['quality_inspection_template'] = this.qualityInspectionTemplate;
    data['inspection_required_before_delivery'] =
        this.inspectionRequiredBeforeDelivery;
    data['is_sub_contracted_item'] = this.isSubContractedItem;
    data['default_bom'] = this.defaultBom;
    data['customer_code'] = this.customerCode;
    data['default_item_manufacturer'] = this.defaultItemManufacturer;
    data['default_manufacturer_part_no'] = this.defaultManufacturerPartNo;
    data['published_in_website'] = this.publishedInWebsite;
    data['total_projected_qty'] = this.totalProjectedQty;
    data['_user_tags'] = this.nUserTags;
    data['_comments'] = this.nComments;
    data['_assign'] = this.nAssign;
    data['_liked_by'] = this.nLikedBy;
    data['gst_hsn_code'] = this.gstHsnCode;
    data['is_nil_exempt'] = this.isNilExempt;
    data['is_non_gst'] = this.isNonGst;
    return data;
  }
}

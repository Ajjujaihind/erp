class ProductDetailsModel {
  Data? data;

  ProductDetailsModel({this.data});

  ProductDetailsModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? name;
  String? owner;
  String? creation;
  String? modified;
  String? modifiedBy;
  int? docstatus;
  int? idx;
  String? namingSeries;
  String? itemCode;
  String? itemName;
  String? itemGroup;
  // Add default values for some fields
  int? isNilExempt = 0;
  int? isNonGst = 0;
  String? stockUom;
  int? disabled = 0;
  int? allowAlternativeItem = 0;
  int? isStockItem = 0;
  int? hasVariants = 0;
  int? includeItemInManufacturing = 0;
  int? openingStock = 0;
  int? valuationRate = 0;
  int? standardRate = 0;
  int? isFixedAsset = 0;
  int? autoCreateAssets = 0;
  int? isGroupedAsset = 0;
  int? overDeliveryReceiptAllowance = 0;
  int? overBillingAllowance = 0;
  String? image;
  String? description;
  int? shelfLifeInDays = 0;
  String? endOfLife;
  String? defaultMaterialRequestType;
  String? valuationMethod;
  int? weightPerUnit = 0;
  int? allowNegativeStock = 0;
  int? hasBatchNo = 0;
  int? createNewBatch = 0;
  int? hasExpiryDate = 0;
  int? retainSample = 0;
  int? sampleQuantity = 0;
  int? hasSerialNo = 0;
  String? variantBasedOn;
  int? minOrderQty = 0;
  int? safetyStock = 0;
  int? isPurchaseItem = 0;
  int? leadTimeDays = 0;
  int? lastPurchaseRate = 0;
  int? isCustomerProvidedItem = 0;
  int? deliveredBySupplier = 0;
  int? enableDeferredExpense = 0;
  int? noOfMonthsExp = 0;
  String? countryOfOrigin;
  int? grantCommission = 0;
  int? isSalesItem = 0;
  int? maxDiscount = 0;
  int? enableDeferredRevenue = 0;
  int? noOfMonths = 0;
  int? inspectionRequiredBeforePurchase = 0;
  int? inspectionRequiredBeforeDelivery = 0;
  int? isSubContractedItem = 0;
  String? customerCode;
  int? publishedInWebsite = 0;
  int? totalProjectedQty = 0;
  String? doctype;
  List<Null>? customerItems;
  List<Uoms>? uoms;
  List<Null>? reorderLevels;
  List<Null>? attributes;
  List<ItemDefaults>? itemDefaults;
  List<Null>? barcodes;
  List<Null>? supplierItems;
  List<Null>? taxes;

  Data(
      {this.name,
      this.owner,
      this.creation,
      this.modified,
      this.modifiedBy,
      this.docstatus,
      this.idx,
      this.namingSeries,
      this.itemCode,
      this.itemName,
      this.itemGroup,
      this.stockUom,
      this.description,
      this.endOfLife,
      this.defaultMaterialRequestType,
      this.valuationMethod,
      this.variantBasedOn,
      this.countryOfOrigin,
      this.customerCode,
      this.doctype,
      this.customerItems,
      this.uoms,
      this.reorderLevels,
      this.attributes,
      this.itemDefaults,
      this.barcodes,
      this.supplierItems,
      this.taxes});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    owner = json['owner'];
    creation = json['creation'];
    modified = json['modified'];
    modifiedBy = json['modified_by'];
    docstatus = json['docstatus'];
    idx = json['idx'];
    namingSeries = json['naming_series'];
    itemCode = json['item_code'];
    itemName = json['item_name'];
    itemGroup = json['item_group'];
    isNilExempt = json['is_nil_exempt'] ?? 0;
    isNonGst = json['is_non_gst'] ?? 0;
    stockUom = json['stock_uom'];
    disabled = json['disabled'] ?? 0;
    allowAlternativeItem = json['allow_alternative_item'] ?? 0;
    isStockItem = json['is_stock_item'] ?? 0;
    hasVariants = json['has_variants'] ?? 0;
    includeItemInManufacturing = json['include_item_in_manufacturing'] ?? 0;
    openingStock = json['opening_stock'] ?? 0;
    valuationRate = json['valuation_rate'] ?? 0;
    standardRate = json['standard_rate'] ?? 0;
    isFixedAsset = json['is_fixed_asset'] ?? 0;
    autoCreateAssets = json['auto_create_assets'] ?? 0;
    isGroupedAsset = json['is_grouped_asset'] ?? 0;
    overDeliveryReceiptAllowance = json['over_delivery_receipt_allowance'] ?? 0;
    overBillingAllowance = json['over_billing_allowance'] ?? 0;
    image = json['image'];
    description = json['description'];
    shelfLifeInDays = json['shelf_life_in_days'] ?? 0;
    endOfLife = json['end_of_life'];
    defaultMaterialRequestType = json['default_material_request_type'];
    valuationMethod = json['valuation_method'];
    weightPerUnit = json['weight_per_unit'] ?? 0;
    allowNegativeStock = json['allow_negative_stock'] ?? 0;
    hasBatchNo = json['has_batch_no'] ?? 0;
    createNewBatch = json['create_new_batch'] ?? 0;
    hasExpiryDate = json['has_expiry_date'] ?? 0;
    retainSample = json['retain_sample'] ?? 0;
    sampleQuantity = json['sample_quantity'] ?? 0;
    hasSerialNo = json['has_serial_no'] ?? 0;
    variantBasedOn = json['variant_based_on'];
    minOrderQty = json['min_order_qty'] ?? 0;
    safetyStock = json['safety_stock'] ?? 0;
    isPurchaseItem = json['is_purchase_item'] ?? 0;
    leadTimeDays = json['lead_time_days'] ?? 0;
    lastPurchaseRate = json['last_purchase_rate'] ?? 0;
    isCustomerProvidedItem = json['is_customer_provided_item'] ?? 0;
    deliveredBySupplier = json['delivered_by_supplier'] ?? 0;
    enableDeferredExpense = json['enable_deferred_expense'] ?? 0;
    noOfMonthsExp = json['no_of_months_exp'] ?? 0;
    countryOfOrigin = json['country_of_origin'];
    grantCommission = json['grant_commission'] ?? 0;
    isSalesItem = json['is_sales_item'] ?? 0;
    maxDiscount = json['max_discount'] ?? 0;
    enableDeferredRevenue = json['enable_deferred_revenue'] ?? 0;
    noOfMonths = json['no_of_months'] ?? 0;
    inspectionRequiredBeforePurchase =
        json['inspection_required_before_purchase'] ?? 0;
    inspectionRequiredBeforeDelivery =
        json['inspection_required_before_delivery'] ?? 0;
    isSubContractedItem = json['is_sub_contracted_item'] ?? 0;
    customerCode = json['customer_code'];
    publishedInWebsite = json['published_in_website'] ?? 0;
    totalProjectedQty = json['total_projected_qty'] ?? 0;
    doctype = json['doctype'];
    if (json['customer_items'] != null) {
      customerItems = <Null>[];
      json['customer_items'].forEach((v) {
        customerItems!.add(new Null.fromJson(v));
      });
    }
    if (json['uoms'] != null) {
      uoms = <Uoms>[];
      json['uoms'].forEach((v) {
        uoms!.add(new Uoms.fromJson(v));
      });
    }
    if (json['reorder_levels'] != null) {
      reorderLevels = <Null>[];
      json['reorder_levels'].forEach((v) {
        reorderLevels!.add(new Null.fromJson(v));
      });
    }
    if (json['attributes'] != null) {
      attributes = <Null>[];
      json['attributes'].forEach((v) {
        attributes!.add(new Null.fromJson(v));
      });
    }
    if (json['item_defaults'] != null) {
      itemDefaults = <ItemDefaults>[];
      json['item_defaults'].forEach((v) {
        itemDefaults!.add(new ItemDefaults.fromJson(v));
      });
    }
    if (json['barcodes'] != null) {
      barcodes = <Null>[];
      json['barcodes'].forEach((v) {
        barcodes!.add(new Null.fromJson(v));
      });
    }
    if (json['supplier_items'] != null) {
      supplierItems = <Null>[];
      json['supplier_items'].forEach((v) {
        supplierItems!.add(new Null.fromJson(v));
      });
    }
    if (json['taxes'] != null) {
      taxes = <Null>[];
      json['taxes'].forEach((v) {
        taxes!.add(new Null.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['owner'] = this.owner;
    data['creation'] = this.creation;
    data['modified'] = this.modified;
    data['modified_by'] = this.modifiedBy;
    data['docstatus'] = this.docstatus;
    data['idx'] = this.idx;
    data['naming_series'] = this.namingSeries;
    data['item_code'] = this.itemCode;
    data['item_name'] = this.itemName;
    data['item_group'] = this.itemGroup;
    data['is_nil_exempt'] = this.isNilExempt;
    data['is_non_gst'] = this.isNonGst;
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
    data['over_delivery_receipt_allowance'] = this.overDeliveryReceiptAllowance;
    data['over_billing_allowance'] = this.overBillingAllowance;
    data['image'] = this.image;
    data['description'] = this.description;
    data['shelf_life_in_days'] = this.shelfLifeInDays;
    data['end_of_life'] = this.endOfLife;
    data['default_material_request_type'] = this.defaultMaterialRequestType;
    data['valuation_method'] = this.valuationMethod;
    data['weight_per_unit'] = this.weightPerUnit;
    data['allow_negative_stock'] = this.allowNegativeStock;
    data['has_batch_no'] = this.hasBatchNo;
    data['create_new_batch'] = this.createNewBatch;
    data['has_expiry_date'] = this.hasExpiryDate;
    data['retain_sample'] = this.retainSample;
    data['sample_quantity'] = this.sampleQuantity;
    data['has_serial_no'] = this.hasSerialNo;
    data['variant_based_on'] = this.variantBasedOn;
    data['min_order_qty'] = this.minOrderQty;
    data['safety_stock'] = this.safetyStock;
    data['is_purchase_item'] = this.isPurchaseItem;
    data['lead_time_days'] = this.leadTimeDays;
    data['last_purchase_rate'] = this.lastPurchaseRate;
    data['is_customer_provided_item'] = this.isCustomerProvidedItem;
    data['delivered_by_supplier'] = this.deliveredBySupplier;
    data['enable_deferred_expense'] = this.enableDeferredExpense;
    data['no_of_months_exp'] = this.noOfMonthsExp;
    data['country_of_origin'] = this.countryOfOrigin;
    data['grant_commission'] = this.grantCommission;
    data['is_sales_item'] = this.isSalesItem;
    data['max_discount'] = this.maxDiscount;
    data['enable_deferred_revenue'] = this.enableDeferredRevenue;
    data['no_of_months'] = this.noOfMonths;
    data['inspection_required_before_purchase'] =
        this.inspectionRequiredBeforePurchase;
    data['inspection_required_before_delivery'] =
        this.inspectionRequiredBeforeDelivery;
    data['is_sub_contracted_item'] = this.isSubContractedItem;
    data['customer_code'] = this.customerCode;
    data['published_in_website'] = this.publishedInWebsite;
    data['total_projected_qty'] = this.totalProjectedQty;
    data['doctype'] = this.doctype;
    if (this.customerItems != null) {
      data['customer_items'] =
          this.customerItems!.map((v) => v.toJson()).toList();
    }
    if (this.uoms != null) {
      data['uoms'] = this.uoms!.map((v) => v.toJson()).toList();
    }
    if (this.reorderLevels != null) {
      data['reorder_levels'] =
          this.reorderLevels!.map((v) => v.toJson()).toList();
    }
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.map((v) => v.toJson()).toList();
    }
    if (this.itemDefaults != null) {
      data['item_defaults'] =
          this.itemDefaults!.map((v) => v.toJson()).toList();
    }
    if (this.barcodes != null) {
      data['barcodes'] = this.barcodes!.map((v) => v.toJson()).toList();
    }
    if (this.supplierItems != null) {
      data['supplier_items'] =
          this.supplierItems!.map((v) => v.toJson()).toList();
    }
    if (this.taxes != null) {
      data['taxes'] = this.taxes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Null {
  Null();

  Null.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
}

class Uoms {
  String? uom;
  double? conversionFactor;
  double? roundedPrecision;

  Uoms({this.uom, this.conversionFactor, this.roundedPrecision});

  Uoms.fromJson(Map<String, dynamic> json) {
    uom = json['uom'];
    conversionFactor = json['conversion_factor'];
    roundedPrecision = json['rounded_precision'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uom'] = this.uom;
    data['conversion_factor'] = this.conversionFactor;
    data['rounded_precision'] = this.roundedPrecision;
    return data;
  }
}

class ItemDefaults {
  String? warehouse;
  double? defaultSupplier;
  double? defaultCustomer;
  double? standardBuyingRate;
  double? standardSellingRate;

  ItemDefaults(
      {this.warehouse,
      this.defaultSupplier,
      this.defaultCustomer,
      this.standardBuyingRate,
      this.standardSellingRate});

  ItemDefaults.fromJson(Map<String, dynamic> json) {
    warehouse = json['warehouse'];
    defaultSupplier = json['default_supplier'];
    defaultCustomer = json['default_customer'];
    standardBuyingRate = json['standard_buying_rate'];
    standardSellingRate = json['standard_selling_rate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['warehouse'] = this.warehouse;
    data['default_supplier'] = this.defaultSupplier;
    data['default_customer'] = this.defaultCustomer;
    data['standard_buying_rate'] = this.standardBuyingRate;
    data['standard_selling_rate'] = this.standardSellingRate;
    return data;
  }
}

.class Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RecurrencePickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndSpinnerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final END_COUNT_MARKER:Ljava/lang/String;

.field final END_DATE_MARKER:Ljava/lang/String;

.field private mEndDateString:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemResourceId:I

.field private mStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mTextResourceId:I

.field private mUseFormStrings:Z

.field final synthetic this$0:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;


# direct methods
.method public constructor <init>(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;Landroid/content/Context;Ljava/util/ArrayList;II)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "itemResourceId"    # I
    .param p5, "textResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p3, "strings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v4, 0x1

    .line 1305
    iput-object p1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->this$0:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    .line 1306
    invoke-direct {p0, p2, p4, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1288
    const-string v2, "%s"

    iput-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->END_DATE_MARKER:Ljava/lang/String;

    .line 1289
    const-string v2, "%d"

    iput-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->END_COUNT_MARKER:Ljava/lang/String;

    .line 1307
    const-string v2, "layout_inflater"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1308
    iput p4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->mItemResourceId:I

    .line 1309
    iput p5, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->mTextResourceId:I

    .line 1310
    iput-object p3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->mStrings:Ljava/util/ArrayList;

    .line 1311
    invoke-virtual {p1}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/codetroopers/betterpickers/R$string;->recurrence_end_date:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->mEndDateString:Ljava/lang/String;

    .line 1316
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->mEndDateString:Ljava/lang/String;

    const-string v3, "%s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1317
    .local v1, "markerStart":I
    if-gtz v1, :cond_2

    .line 1320
    iput-boolean v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->mUseFormStrings:Z

    .line 1332
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->mUseFormStrings:Z

    if-eqz v2, :cond_1

    .line 1335
    invoke-static {p1}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->access$900(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)Landroid/widget/Spinner;

    move-result-object v2

    new-instance v3, Landroid/widget/TableLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/TableLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1338
    :cond_1
    return-void

    .line 1322
    :cond_2
    invoke-virtual {p1}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/codetroopers/betterpickers/R$plurals;->recurrence_end_count:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 1324
    .local v0, "countEndStr":Ljava/lang/String;
    const-string v2, "%d"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1325
    if-gtz v1, :cond_0

    .line 1328
    iput-boolean v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->mUseFormStrings:Z

    goto :goto_0
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1411
    if-nez p2, :cond_0

    .line 1412
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->mItemResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1417
    .local v1, "v":Landroid/view/View;
    :goto_0
    sget v2, Lcom/codetroopers/betterpickers/R$id;->spinner_item:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1418
    .local v0, "item":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->mStrings:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1420
    return-object v1

    .line 1414
    .end local v0    # "item":Landroid/widget/TextView;
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    move-object v1, p2

    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 1345
    if-nez p2, :cond_1

    .line 1346
    iget-object v5, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->mTextResourceId:I

    invoke-virtual {v5, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 1351
    .local v4, "v":Landroid/view/View;
    :goto_0
    sget v5, Lcom/codetroopers/betterpickers/R$id;->spinner_item:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1353
    .local v1, "item":Landroid/widget/TextView;
    packed-switch p1, :pswitch_data_0

    .line 1400
    const/4 v4, 0x0

    .line 1404
    :cond_0
    :goto_1
    return-object v4

    .line 1348
    .end local v1    # "item":Landroid/widget/TextView;
    .end local v4    # "v":Landroid/view/View;
    :cond_1
    move-object v4, p2

    .restart local v4    # "v":Landroid/view/View;
    goto :goto_0

    .line 1355
    .restart local v1    # "item":Landroid/widget/TextView;
    :pswitch_0
    iget-object v5, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->mStrings:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1358
    :pswitch_1
    iget-object v5, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->mEndDateString:Ljava/lang/String;

    const-string v6, "%s"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1360
    .local v2, "markerStart":I
    if-eq v2, v9, :cond_0

    .line 1361
    iget-boolean v5, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->mUseFormStrings:Z

    if-nez v5, :cond_2

    if-nez v2, :cond_3

    .line 1364
    :cond_2
    iget-object v5, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->this$0:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    invoke-static {v5}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->access$1000(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1366
    :cond_3
    iget-object v5, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->mEndDateString:Ljava/lang/String;

    invoke-virtual {v5, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1371
    .end local v2    # "markerStart":I
    :pswitch_2
    iget-object v5, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->this$0:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    invoke-static {v5}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->access$1100(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/codetroopers/betterpickers/R$plurals;->recurrence_end_count:I

    iget-object v7, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->this$0:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    .line 1372
    invoke-static {v7}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    move-result-object v7

    iget v7, v7, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endCount:I

    .line 1371
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 1373
    .local v0, "endString":Ljava/lang/String;
    const-string v5, "%d"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1375
    .restart local v2    # "markerStart":I
    if-eq v2, v9, :cond_0

    .line 1376
    iget-boolean v5, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->mUseFormStrings:Z

    if-nez v5, :cond_4

    if-nez v2, :cond_5

    .line 1379
    :cond_4
    iget-object v5, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->this$0:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    invoke-static {v5}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->access$1200(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1381
    iget-object v5, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->this$0:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    invoke-static {v5}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->access$1300(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)Landroid/widget/TextView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1383
    iget-object v5, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->this$0:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->access$1402(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;Z)Z

    goto :goto_1

    .line 1385
    :cond_5
    const-string v5, "%d"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v3, v2, v5

    .line 1386
    .local v3, "postTextStart":I
    iget-object v5, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->this$0:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    invoke-static {v5}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->access$1300(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)Landroid/widget/TextView;

    move-result-object v5

    .line 1387
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    .line 1386
    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1387
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1386
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1389
    iget-object v5, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->this$0:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    invoke-static {v5}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    move-result-object v5

    iget v5, v5, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->end:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 1390
    iget-object v5, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->this$0:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    invoke-static {v5}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->access$1300(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1392
    :cond_6
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_7

    .line 1393
    add-int/lit8 v2, v2, -0x1

    .line 1395
    :cond_7
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1353
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

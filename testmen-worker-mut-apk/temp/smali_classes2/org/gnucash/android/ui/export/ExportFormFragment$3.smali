.class Lorg/gnucash/android/ui/export/ExportFormFragment$3;
.super Ljava/lang/Object;
.source "ExportFormFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/export/ExportFormFragment;->bindViewListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/export/ExportFormFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/export/ExportFormFragment;

    .prologue
    .line 443
    iput-object p1, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$3;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 447
    const-wide/16 v4, 0x0

    .line 449
    .local v4, "timeMillis":J
    :try_start_0
    sget-object v6, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->TIME_FORMATTER:Ljava/text/DateFormat;

    iget-object v7, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$3;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    iget-object v7, v7, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportStartTime:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 450
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 455
    .end local v1    # "date":Ljava/util/Date;
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 456
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 458
    new-instance v3, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;

    invoke-direct {v3}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;-><init>()V

    .line 459
    .local v3, "timePickerDialog":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;
    iget-object v6, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$3;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    invoke-virtual {v3, v6}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->setOnTimeSetListener(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$OnTimeSetListener;)Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;

    .line 460
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xc

    .line 461
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 460
    invoke-virtual {v3, v6, v7}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->setStartTime(II)Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;

    .line 462
    iget-object v6, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$3;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    invoke-virtual {v6}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    const-string v7, "time_picker_dialog_fragment"

    invoke-virtual {v3, v6, v7}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 463
    return-void

    .line 451
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v3    # "timePickerDialog":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;
    :catch_0
    move-exception v2

    .line 452
    .local v2, "e":Ljava/text/ParseException;
    iget-object v6, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$3;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    invoke-virtual {v6}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Error converting input time to Date object"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

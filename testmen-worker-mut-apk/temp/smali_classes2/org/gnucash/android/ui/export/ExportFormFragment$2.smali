.class Lorg/gnucash/android/ui/export/ExportFormFragment$2;
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
    .line 419
    iput-object p1, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$2;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 423
    const-wide/16 v2, 0x0

    .line 425
    .local v2, "dateMillis":J
    :try_start_0
    sget-object v9, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->DATE_FORMATTER:Ljava/text/DateFormat;

    iget-object v10, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$2;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    iget-object v10, v10, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportStartDate:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 426
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 430
    .end local v1    # "date":Ljava/util/Date;
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 431
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 433
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 434
    .local v8, "year":I
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 435
    .local v7, "monthOfYear":I
    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 436
    .local v5, "dayOfMonth":I
    new-instance v4, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    invoke-direct {v4}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;-><init>()V

    .line 437
    .local v4, "datePickerDialog":Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;
    iget-object v9, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$2;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    invoke-virtual {v4, v9}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->setOnDateSetListener(Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateSetListener;)Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    .line 438
    invoke-virtual {v4, v8, v7, v5}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->setPreselectedDate(III)Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    .line 439
    iget-object v9, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$2;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    invoke-virtual {v9}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    const-string v10, "date_picker_fragment"

    invoke-virtual {v4, v9, v10}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 440
    return-void

    .line 427
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v4    # "datePickerDialog":Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;
    .end local v5    # "dayOfMonth":I
    .end local v7    # "monthOfYear":I
    .end local v8    # "year":I
    :catch_0
    move-exception v6

    .line 428
    .local v6, "e":Ljava/text/ParseException;
    iget-object v9, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$2;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    invoke-virtual {v9}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getTag()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Error converting input time to Date object"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

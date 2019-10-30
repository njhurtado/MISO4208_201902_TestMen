.class public Lorg/gnucash/android/ui/export/ExportFormFragment;
.super Landroid/support/v4/app/Fragment;
.source "ExportFormFragment.java"

# interfaces
.implements Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$OnRecurrenceSetListener;
.implements Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateSetListener;
.implements Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$OnTimeSetListener;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final REQUEST_EXPORT_FILE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "ExportFormFragment"


# instance fields
.field mCsvOptionsLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090122
    .end annotation
.end field

.field mCsvTransactionsRadioButton:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09018a
    .end annotation
.end field

.field mDeleteAllCheckBox:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090061
    .end annotation
.end field

.field mDestinationSpinner:Landroid/widget/Spinner;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901cc
    .end annotation
.end field

.field private mEventRecurrence:Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

.field mExportAllSwitch:Landroid/support/v7/widget/SwitchCompat;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901df
    .end annotation
.end field

.field private mExportCsvSeparator:C

.field mExportDateLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900b2
    .end annotation
.end field

.field private mExportFormat:Lorg/gnucash/android/export/ExportFormat;

.field private mExportStartCalendar:Ljava/util/Calendar;

.field mExportStartDate:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900b4
    .end annotation
.end field

.field mExportStartTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900b5
    .end annotation
.end field

.field private mExportStarted:Z

.field private mExportTarget:Lorg/gnucash/android/export/ExportParams$ExportTarget;

.field private mExportUri:Landroid/net/Uri;

.field mExportWarningTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900b6
    .end annotation
.end field

.field mOfxRadioButton:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09018e
    .end annotation
.end field

.field mQifRadioButton:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09018f
    .end annotation
.end field

.field mRecurrenceOptionsView:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090194
    .end annotation
.end field

.field private mRecurrenceRule:Ljava/lang/String;

.field mRecurrenceTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900fc
    .end annotation
.end field

.field mSeparatorColonButton:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090190
    .end annotation
.end field

.field mSeparatorCommaButton:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090191
    .end annotation
.end field

.field mSeparatorSemicolonButton:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090192
    .end annotation
.end field

.field mTargetUriTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901e8
    .end annotation
.end field

.field mXmlRadioButton:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090193
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-class v0, Lorg/gnucash/android/ui/export/ExportFormFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/gnucash/android/ui/export/ExportFormFragment;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 154
    new-instance v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    invoke-direct {v0}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;-><init>()V

    iput-object v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mEventRecurrence:Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    .line 161
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportStartCalendar:Ljava/util/Calendar;

    .line 171
    sget-object v0, Lorg/gnucash/android/export/ExportFormat;->QIF:Lorg/gnucash/android/export/ExportFormat;

    iput-object v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportFormat:Lorg/gnucash/android/export/ExportFormat;

    .line 173
    sget-object v0, Lorg/gnucash/android/export/ExportParams$ExportTarget;->SD_CARD:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    iput-object v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportTarget:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    .line 180
    const/16 v0, 0x2c

    iput-char v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportCsvSeparator:C

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportStarted:Z

    return-void
.end method

.method static synthetic access$002(Lorg/gnucash/android/ui/export/ExportFormFragment;Lorg/gnucash/android/export/ExportParams$ExportTarget;)Lorg/gnucash/android/export/ExportParams$ExportTarget;
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/export/ExportFormFragment;
    .param p1, "x1"    # Lorg/gnucash/android/export/ExportParams$ExportTarget;

    .prologue
    .line 92
    iput-object p1, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportTarget:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    return-object p1
.end method

.method static synthetic access$100(Lorg/gnucash/android/ui/export/ExportFormFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/export/ExportFormFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lorg/gnucash/android/ui/export/ExportFormFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/export/ExportFormFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lorg/gnucash/android/ui/export/ExportFormFragment;->setExportUriText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lorg/gnucash/android/ui/export/ExportFormFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/export/ExportFormFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lorg/gnucash/android/ui/export/ExportFormFragment;->onRadioButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method private bindViewListeners()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 352
    invoke-virtual {p0}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const v10, 0x7f030006

    const v11, 0x1090008

    invoke-static {v9, v10, v11}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 354
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v9, 0x1090009

    invoke-virtual {v0, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 355
    iget-object v9, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mDestinationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 356
    iget-object v9, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mDestinationSpinner:Landroid/widget/Spinner;

    new-instance v10, Lorg/gnucash/android/ui/export/ExportFormFragment$1;

    invoke-direct {v10, p0}, Lorg/gnucash/android/ui/export/ExportFormFragment$1;-><init>(Lorg/gnucash/android/ui/export/ExportFormFragment;)V

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 407
    invoke-virtual {p0}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const v10, 0x7f0f00ae

    .line 408
    invoke-virtual {p0, v10}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 409
    .local v4, "position":I
    iget-object v9, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mDestinationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 412
    invoke-static {}, Lorg/gnucash/android/util/PreferencesHelper;->getLastExportTime()Ljava/sql/Timestamp;

    move-result-object v7

    .line 413
    .local v7, "timestamp":Ljava/sql/Timestamp;
    iget-object v9, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportStartCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 415
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v7}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v10

    invoke-direct {v1, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 416
    .local v1, "date":Ljava/util/Date;
    iget-object v9, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportStartDate:Landroid/widget/TextView;

    sget-object v10, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->DATE_FORMATTER:Ljava/text/DateFormat;

    invoke-virtual {v10, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v9, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportStartTime:Landroid/widget/TextView;

    sget-object v10, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->TIME_FORMATTER:Ljava/text/DateFormat;

    invoke-virtual {v10, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v9, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportStartDate:Landroid/widget/TextView;

    new-instance v10, Lorg/gnucash/android/ui/export/ExportFormFragment$2;

    invoke-direct {v10, p0}, Lorg/gnucash/android/ui/export/ExportFormFragment$2;-><init>(Lorg/gnucash/android/ui/export/ExportFormFragment;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    iget-object v9, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportStartTime:Landroid/widget/TextView;

    new-instance v10, Lorg/gnucash/android/ui/export/ExportFormFragment$3;

    invoke-direct {v10, p0}, Lorg/gnucash/android/ui/export/ExportFormFragment$3;-><init>(Lorg/gnucash/android/ui/export/ExportFormFragment;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    invoke-virtual {p0}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 467
    .local v6, "sharedPrefs":Landroid/content/SharedPreferences;
    iget-object v9, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportAllSwitch:Landroid/support/v7/widget/SwitchCompat;

    new-instance v10, Lorg/gnucash/android/ui/export/ExportFormFragment$4;

    invoke-direct {v10, p0}, Lorg/gnucash/android/ui/export/ExportFormFragment$4;-><init>(Lorg/gnucash/android/ui/export/ExportFormFragment;)V

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 478
    iget-object v9, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportAllSwitch:Landroid/support/v7/widget/SwitchCompat;

    const v10, 0x7f0f00aa

    invoke-virtual {p0, v10}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 479
    iget-object v9, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mDeleteAllCheckBox:Landroid/widget/CheckBox;

    const v10, 0x7f0f00a4

    invoke-virtual {p0, v10}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 481
    iget-object v10, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mRecurrenceTextView:Landroid/widget/TextView;

    new-instance v11, Lorg/gnucash/android/ui/util/RecurrenceViewClickListener;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    check-cast v9, Landroid/support/v7/app/AppCompatActivity;

    iget-object v12, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mRecurrenceRule:Ljava/lang/String;

    invoke-direct {v11, v9, v12, p0}, Lorg/gnucash/android/ui/util/RecurrenceViewClickListener;-><init>(Landroid/support/v7/app/AppCompatActivity;Ljava/lang/String;Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$OnRecurrenceSetListener;)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    const v9, 0x7f0f00a0

    invoke-virtual {p0, v9}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lorg/gnucash/android/export/ExportFormat;->CSVT:Lorg/gnucash/android/export/ExportFormat;

    invoke-virtual {v10}, Lorg/gnucash/android/export/ExportFormat;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 485
    .local v2, "defaultExportFormat":Ljava/lang/String;
    invoke-static {v2}, Lorg/gnucash/android/export/ExportFormat;->valueOf(Ljava/lang/String;)Lorg/gnucash/android/export/ExportFormat;

    move-result-object v9

    iput-object v9, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportFormat:Lorg/gnucash/android/export/ExportFormat;

    .line 487
    new-instance v5, Lorg/gnucash/android/ui/export/ExportFormFragment$5;

    invoke-direct {v5, p0}, Lorg/gnucash/android/ui/export/ExportFormFragment$5;-><init>(Lorg/gnucash/android/ui/export/ExportFormFragment;)V

    .line 494
    .local v5, "radioClickListener":Landroid/view/View$OnClickListener;
    invoke-virtual {p0}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getView()Landroid/view/View;

    move-result-object v8

    .line 495
    .local v8, "v":Landroid/view/View;
    sget-boolean v9, Lorg/gnucash/android/ui/export/ExportFormFragment;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    if-nez v8, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 497
    :cond_0
    iget-object v9, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mOfxRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v9, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    iget-object v9, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mQifRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v9, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    iget-object v9, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mXmlRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v9, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    iget-object v9, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mCsvTransactionsRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v9, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    iget-object v9, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mSeparatorCommaButton:Landroid/widget/RadioButton;

    invoke-virtual {v9, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    iget-object v9, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mSeparatorColonButton:Landroid/widget/RadioButton;

    invoke-virtual {v9, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    iget-object v9, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mSeparatorSemicolonButton:Landroid/widget/RadioButton;

    invoke-virtual {v9, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/gnucash/android/export/ExportFormat;->valueOf(Ljava/lang/String;)Lorg/gnucash/android/export/ExportFormat;

    move-result-object v3

    .line 507
    .local v3, "defaultFormat":Lorg/gnucash/android/export/ExportFormat;
    sget-object v9, Lorg/gnucash/android/ui/export/ExportFormFragment$6;->$SwitchMap$org$gnucash$android$export$ExportFormat:[I

    invoke-virtual {v3}, Lorg/gnucash/android/export/ExportFormat;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 514
    :goto_0
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->isDoubleEntryEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 515
    iget-object v9, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mOfxRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v9, v13}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 520
    :goto_1
    return-void

    .line 508
    :pswitch_0
    iget-object v9, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mQifRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v9}, Landroid/widget/RadioButton;->performClick()Z

    goto :goto_0

    .line 509
    :pswitch_1
    iget-object v9, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mOfxRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v9}, Landroid/widget/RadioButton;->performClick()Z

    goto :goto_0

    .line 510
    :pswitch_2
    iget-object v9, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mXmlRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v9}, Landroid/widget/RadioButton;->performClick()Z

    goto :goto_0

    .line 511
    :pswitch_3
    iget-object v9, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mCsvTransactionsRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v9}, Landroid/widget/RadioButton;->performClick()Z

    goto :goto_0

    .line 517
    :cond_1
    iget-object v9, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mXmlRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v9, v13}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_1

    .line 507
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onRadioButtonClicked(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 241
    :goto_0
    :pswitch_0
    return-void

    .line 191
    :pswitch_1
    sget-object v0, Lorg/gnucash/android/export/ExportFormat;->OFX:Lorg/gnucash/android/export/ExportFormat;

    iput-object v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportFormat:Lorg/gnucash/android/export/ExportFormat;

    .line 192
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->isDoubleEntryEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportWarningTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0f007e

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportWarningTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    :goto_1
    iget-object v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportDateLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lorg/gnucash/android/ui/export/OptionsViewAnimationUtils;->expand(Landroid/view/View;)V

    .line 200
    iget-object v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mCsvOptionsLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lorg/gnucash/android/ui/export/OptionsViewAnimationUtils;->collapse(Landroid/view/View;)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportWarningTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 204
    :pswitch_2
    sget-object v0, Lorg/gnucash/android/export/ExportFormat;->QIF:Lorg/gnucash/android/export/ExportFormat;

    iput-object v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportFormat:Lorg/gnucash/android/export/ExportFormat;

    .line 206
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->isDoubleEntryEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportWarningTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0f007f

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportWarningTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    :goto_2
    iget-object v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportDateLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lorg/gnucash/android/ui/export/OptionsViewAnimationUtils;->expand(Landroid/view/View;)V

    .line 214
    iget-object v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mCsvOptionsLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lorg/gnucash/android/ui/export/OptionsViewAnimationUtils;->collapse(Landroid/view/View;)V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportWarningTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 218
    :pswitch_3
    sget-object v0, Lorg/gnucash/android/export/ExportFormat;->XML:Lorg/gnucash/android/export/ExportFormat;

    iput-object v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportFormat:Lorg/gnucash/android/export/ExportFormat;

    .line 219
    iget-object v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportWarningTextView:Landroid/widget/TextView;

    const v1, 0x7f0f0080

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 220
    iget-object v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportDateLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lorg/gnucash/android/ui/export/OptionsViewAnimationUtils;->collapse(Landroid/view/View;)V

    .line 221
    iget-object v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mCsvOptionsLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lorg/gnucash/android/ui/export/OptionsViewAnimationUtils;->collapse(Landroid/view/View;)V

    goto :goto_0

    .line 225
    :pswitch_4
    sget-object v0, Lorg/gnucash/android/export/ExportFormat;->CSVT:Lorg/gnucash/android/export/ExportFormat;

    iput-object v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportFormat:Lorg/gnucash/android/export/ExportFormat;

    .line 226
    iget-object v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportWarningTextView:Landroid/widget/TextView;

    const v1, 0x7f0f007d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 227
    iget-object v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportDateLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lorg/gnucash/android/ui/export/OptionsViewAnimationUtils;->expand(Landroid/view/View;)V

    .line 228
    iget-object v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mCsvOptionsLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lorg/gnucash/android/ui/export/OptionsViewAnimationUtils;->expand(Landroid/view/View;)V

    goto/16 :goto_0

    .line 232
    :pswitch_5
    const/16 v0, 0x2c

    iput-char v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportCsvSeparator:C

    goto/16 :goto_0

    .line 235
    :pswitch_6
    const/16 v0, 0x3a

    iput-char v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportCsvSeparator:C

    goto/16 :goto_0

    .line 238
    :pswitch_7
    const/16 v0, 0x3b

    iput-char v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportCsvSeparator:C

    goto/16 :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x7f09018a
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_3
    .end packed-switch
.end method

.method private selectExportFile()V
    .locals 5

    .prologue
    .line 540
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 541
    .local v1, "createIntent":Landroid/content/Intent;
    const-string v3, "*/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.category.OPENABLE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getActiveBookDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "bookName":Ljava/lang/String;
    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportFormat:Lorg/gnucash/android/export/ExportFormat;

    invoke-static {v3, v0}, Lorg/gnucash/android/export/Exporter;->buildExportFilename(Lorg/gnucash/android/export/ExportFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, "filename":Ljava/lang/String;
    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    const/16 v3, 0x14

    invoke-virtual {p0, v1, v3}, Lorg/gnucash/android/ui/export/ExportFormFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 547
    return-void
.end method

.method private setExportUriText(Ljava/lang/String;)V
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 527
    if-nez p1, :cond_0

    .line 528
    iget-object v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mTargetUriTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mTargetUriTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mTargetUriTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mTargetUriTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private startExport()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 307
    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportTarget:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    sget-object v4, Lorg/gnucash/android/export/ExportParams$ExportTarget;->URI:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    .line 308
    iput-boolean v6, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportStarted:Z

    .line 309
    invoke-direct {p0}, Lorg/gnucash/android/ui/export/ExportFormFragment;->selectExportFile()V

    .line 345
    :goto_0
    return-void

    .line 313
    :cond_0
    new-instance v0, Lorg/gnucash/android/export/ExportParams;

    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportFormat:Lorg/gnucash/android/export/ExportFormat;

    invoke-direct {v0, v3}, Lorg/gnucash/android/export/ExportParams;-><init>(Lorg/gnucash/android/export/ExportFormat;)V

    .line 315
    .local v0, "exportParameters":Lorg/gnucash/android/export/ExportParams;
    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportAllSwitch:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v3}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 316
    invoke-static {}, Lorg/gnucash/android/util/TimestampHelper;->getTimestampFromEpochZero()Ljava/sql/Timestamp;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/gnucash/android/export/ExportParams;->setExportStartTime(Ljava/sql/Timestamp;)V

    .line 321
    :goto_1
    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportTarget:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    invoke-virtual {v0, v3}, Lorg/gnucash/android/export/ExportParams;->setExportTarget(Lorg/gnucash/android/export/ExportParams$ExportTarget;)V

    .line 322
    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportUri:Landroid/net/Uri;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v0, v3}, Lorg/gnucash/android/export/ExportParams;->setExportLocation(Ljava/lang/String;)V

    .line 323
    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mDeleteAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v3}, Lorg/gnucash/android/export/ExportParams;->setDeleteTransactionsAfterExport(Z)V

    .line 324
    iget-char v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportCsvSeparator:C

    invoke-virtual {v0, v3}, Lorg/gnucash/android/export/ExportParams;->setCsvSeparator(C)V

    .line 326
    const-string v3, "ExportFormFragment"

    const-string v4, "Commencing async export of transactions"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v3, Lorg/gnucash/android/export/ExportAsyncTask;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getActiveDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/gnucash/android/export/ExportAsyncTask;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    new-array v4, v6, [Lorg/gnucash/android/export/ExportParams;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Lorg/gnucash/android/export/ExportAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 329
    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mRecurrenceRule:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 330
    new-instance v2, Lorg/gnucash/android/model/ScheduledAction;

    sget-object v3, Lorg/gnucash/android/model/ScheduledAction$ActionType;->BACKUP:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    invoke-direct {v2, v3}, Lorg/gnucash/android/model/ScheduledAction;-><init>(Lorg/gnucash/android/model/ScheduledAction$ActionType;)V

    .line 331
    .local v2, "scheduledAction":Lorg/gnucash/android/model/ScheduledAction;
    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mEventRecurrence:Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    invoke-static {v3}, Lorg/gnucash/android/ui/util/RecurrenceParser;->parse(Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;)Lorg/gnucash/android/model/Recurrence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/gnucash/android/model/ScheduledAction;->setRecurrence(Lorg/gnucash/android/model/Recurrence;)V

    .line 332
    invoke-virtual {v0}, Lorg/gnucash/android/export/ExportParams;->toCsv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/gnucash/android/model/ScheduledAction;->setTag(Ljava/lang/String;)V

    .line 333
    invoke-static {}, Lorg/gnucash/android/model/BaseModel;->generateUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/gnucash/android/model/ScheduledAction;->setActionUID(Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;

    move-result-object v3

    sget-object v4, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->insert:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    invoke-virtual {v3, v2, v4}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->addRecord(Lorg/gnucash/android/model/ScheduledAction;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V

    .line 337
    .end local v2    # "scheduledAction":Lorg/gnucash/android/model/ScheduledAction;
    :cond_1
    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mDestinationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 338
    .local v1, "position":I
    invoke-virtual {p0}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 339
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const v4, 0x7f0f00ae

    invoke-virtual {p0, v4}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 340
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 318
    .end local v1    # "position":I
    :cond_2
    new-instance v3, Ljava/sql/Timestamp;

    iget-object v4, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportStartCalendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v0, v3}, Lorg/gnucash/android/export/ExportParams;->setExportStartTime(Ljava/sql/Timestamp;)V

    goto/16 :goto_1

    .line 322
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 281
    invoke-virtual {p0}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 282
    .local v0, "supportActionBar":Landroid/support/v7/app/ActionBar;
    sget-boolean v1, Lorg/gnucash/android/ui/export/ExportFormFragment;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 283
    :cond_0
    const v1, 0x7f0f01c2

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 284
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/export/ExportFormFragment;->setHasOptionsMenu(Z)V

    .line 285
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 568
    packed-switch p1, :pswitch_data_0

    .line 592
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 570
    :pswitch_1
    if-ne p2, v1, :cond_0

    .line 571
    sget-object v1, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0

    .line 576
    :pswitch_2
    if-ne p2, v1, :cond_0

    .line 577
    if-eqz p3, :cond_1

    .line 578
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportUri:Landroid/net/Uri;

    .line 581
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v0, v1, 0x3

    .line 583
    .local v0, "takeFlags":I
    invoke-virtual {p0}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 585
    iget-object v1, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mTargetUriTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    iget-boolean v1, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportStarted:Z

    if-eqz v1, :cond_0

    .line 587
    invoke-direct {p0}, Lorg/gnucash/android/ui/export/ExportFormFragment;->startExport()V

    goto :goto_0

    .line 568
    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 256
    const v1, 0x7f0c0008

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 257
    const v1, 0x7f090141

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 258
    .local v0, "menuItem":Landroid/view/MenuItem;
    const v1, 0x7f0f0030

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 259
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 246
    const v1, 0x7f0b0058

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 248
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 250
    invoke-direct {p0}, Lorg/gnucash/android/ui/export/ExportFormFragment;->bindViewListeners()V

    .line 252
    return-object v0
.end method

.method public onDateSet(Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;III)V
    .locals 4
    .param p1, "dialog"    # Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 596
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2, p3, p4}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 597
    .local v0, "cal":Ljava/util/Calendar;
    iget-object v1, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportStartDate:Landroid/widget/TextView;

    sget-object v2, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->DATE_FORMATTER:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    iget-object v1, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportStartCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 599
    iget-object v1, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportStartCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 600
    iget-object v1, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportStartCalendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p4}, Ljava/util/Calendar;->set(II)V

    .line 601
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 263
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 273
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 265
    :sswitch_0
    invoke-direct {p0}, Lorg/gnucash/android/ui/export/ExportFormFragment;->startExport()V

    goto :goto_0

    .line 269
    :sswitch_1
    invoke-virtual {p0}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 263
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f090141 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 295
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 299
    invoke-virtual {p0}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 300
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "skip_passcode_screen"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 301
    return-void
.end method

.method public onRecurrenceSet(Ljava/lang/String;)V
    .locals 5
    .param p1, "rrule"    # Ljava/lang/String;

    .prologue
    .line 551
    iput-object p1, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mRecurrenceRule:Ljava/lang/String;

    .line 552
    const v1, 0x7f0f010a

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "repeatString":Ljava/lang/String;
    iget-object v1, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mRecurrenceRule:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 555
    iget-object v1, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mEventRecurrence:Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    iget-object v2, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mRecurrenceRule:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mEventRecurrence:Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrenceFormatter;->getRepeatString(Landroid/content/Context;Landroid/content/res/Resources;Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;Z)Ljava/lang/String;

    move-result-object v0

    .line 559
    :cond_0
    iget-object v1, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mRecurrenceTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 289
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 290
    invoke-static {}, Lorg/gnucash/android/export/DropboxHelper;->retrieveAndSaveToken()Ljava/lang/String;

    .line 291
    return-void
.end method

.method public onTimeSet(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;II)V
    .locals 6
    .param p1, "dialog"    # Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    const/4 v1, 0x0

    .line 605
    new-instance v0, Ljava/util/GregorianCalendar;

    move v2, v1

    move v3, v1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/GregorianCalendar;-><init>(IIIII)V

    .line 606
    .local v0, "cal":Ljava/util/Calendar;
    iget-object v1, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportStartTime:Landroid/widget/TextView;

    sget-object v2, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->TIME_FORMATTER:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v1, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportStartCalendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 608
    iget-object v1, p0, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportStartCalendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 609
    return-void
.end method

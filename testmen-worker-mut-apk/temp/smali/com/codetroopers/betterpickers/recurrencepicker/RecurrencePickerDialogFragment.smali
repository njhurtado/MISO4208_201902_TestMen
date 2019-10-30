.class public Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "RecurrencePickerDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;,
        Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$OnRecurrenceSetListener;,
        Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$minMaxTextWatcher;,
        Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;
    }
.end annotation


# static fields
.field private static final BUNDLE_END_COUNT_HAS_FOCUS:Ljava/lang/String; = "bundle_end_count_has_focus"

.field public static final BUNDLE_HIDE_SWITCH_BUTTON:Ljava/lang/String; = "bundle_hide_switch_button"

.field private static final BUNDLE_MODEL:Ljava/lang/String; = "bundle_model"

.field public static final BUNDLE_RRULE:Ljava/lang/String; = "bundle_event_rrule"

.field public static final BUNDLE_START_TIME_MILLIS:Ljava/lang/String; = "bundle_event_start_time"

.field public static final BUNDLE_TIME_ZONE:Ljava/lang/String; = "bundle_event_time_zone"

.field private static final COUNT_DEFAULT:I = 0x5

.field private static final COUNT_MAX:I = 0x2da

.field private static final FIFTH_WEEK_IN_A_MONTH:I = 0x5

.field private static final FRAG_TAG_DATE_PICKER:Ljava/lang/String; = "tag_date_picker_frag"

.field private static final INTERVAL_DEFAULT:I = 0x1

.field private static final INTERVAL_MAX:I = 0x63

.field public static final LAST_NTH_DAY_OF_WEEK:I = -0x1

.field private static final MIN_SCREEN_WIDTH_FOR_SINGLE_ROW_WEEK:I = 0x1c2

.field private static final TAG:Ljava/lang/String; = "RecurrencePickerDialogFragment"

.field private static final mFreqModelToEventRecurrence:[I


# instance fields
.field private final TIME_DAY_TO_CALENDAR_DAY:[I

.field private mDatePickerDialog:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

.field private mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

.field private mDoneButton:Landroid/widget/Button;

.field private mEndCount:Landroid/widget/EditText;

.field private mEndCountLabel:Ljava/lang/String;

.field private mEndDateLabel:Ljava/lang/String;

.field private mEndDateTextView:Landroid/widget/TextView;

.field private mEndNeverStr:Ljava/lang/String;

.field private mEndSpinner:Landroid/widget/Spinner;

.field private mEndSpinnerAdapter:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;

.field private mEndSpinnerArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mFreqSpinner:Landroid/widget/Spinner;

.field private mHidePostEndCount:Z

.field private mInterval:Landroid/widget/EditText;

.field private mIntervalPostText:Landroid/widget/TextView;

.field private mIntervalPreText:Landroid/widget/TextView;

.field private mIntervalResId:I

.field private mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

.field private mMonthGroup:Landroid/widget/LinearLayout;

.field private mMonthRepeatByDayOfWeekStr:Ljava/lang/String;

.field private mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;

.field private mMonthRepeatByRadioGroup:Landroid/widget/RadioGroup;

.field private mPostEndCount:Landroid/widget/TextView;

.field private mRecurrence:Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

.field private mRecurrenceSetListener:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$OnRecurrenceSetListener;

.field private mRepeatMonthlyByNthDayOfMonth:Landroid/widget/RadioButton;

.field private mRepeatMonthlyByNthDayOfWeek:Landroid/widget/RadioButton;

.field private mRepeatSwitch:Landroid/support/v7/widget/SwitchCompat;

.field private mResources:Landroid/content/res/Resources;

.field private mTime:Landroid/text/format/Time;

.field private mToast:Landroid/widget/Toast;

.field private mView:Landroid/view/View;

.field private mWeekByDayButtons:[Landroid/widget/ToggleButton;

.field private mWeekGroup:Landroid/widget/LinearLayout;

.field private mWeekGroup2:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mFreqModelToEventRecurrence:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 397
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 313
    new-instance v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    invoke-direct {v0}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mRecurrence:Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    .line 314
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mTime:Landroid/text/format/Time;

    .line 315
    new-instance v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    invoke-direct {v0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    .line 318
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->TIME_DAY_TO_CALENDAR_DAY:[I

    .line 360
    const/4 v0, -0x1

    iput v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mIntervalResId:I

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndSpinnerArray:Ljava/util/ArrayList;

    .line 380
    new-array v0, v2, [Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mWeekByDayButtons:[Landroid/widget/ToggleButton;

    .line 398
    return-void

    .line 318
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method static synthetic access$100(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->updateDoneButtonState()V

    return-void
.end method

.method static synthetic access$1000(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndDateLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndCountLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mPostEndCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mHidePostEndCount:Z

    return p1
.end method

.method static synthetic access$200(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->togglePickerOptions()V

    return-void
.end method

.method static synthetic access$400(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    .prologue
    .line 71
    iget v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mIntervalResId:I

    return v0
.end method

.method static synthetic access$500(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mInterval:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->updateIntervalText()V

    return-void
.end method

.method static synthetic access$700(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->updateEndCountText()V

    return-void
.end method

.method static synthetic access$800(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndCount:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method public static canHandleRecurrenceRule(Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;)Z
    .locals 6
    .param p0, "er"    # Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    .prologue
    const/4 v5, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 407
    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->freq:I

    packed-switch v4, :pswitch_data_0

    .line 460
    :cond_0
    :goto_0
    return v2

    .line 418
    :pswitch_0
    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->count:I

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->until:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 430
    :cond_1
    const/4 v1, 0x0

    .line 431
    .local v1, "numOfByDayNum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayCount:I

    if-ge v0, v4, :cond_3

    .line 432
    iget-object v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayNum:[I

    aget v4, v4, v0

    invoke-static {v4}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->isSupportedMonthlyByNthDayOfWeek(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 433
    add-int/lit8 v1, v1, 0x1

    .line 431
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 437
    :cond_3
    if-gt v1, v3, :cond_0

    .line 441
    if-lez v1, :cond_4

    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->freq:I

    if-ne v4, v5, :cond_0

    .line 447
    :cond_4
    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bymonthdayCount:I

    if-gt v4, v3, :cond_0

    .line 451
    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->freq:I

    if-ne v4, v5, :cond_5

    .line 452
    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayCount:I

    if-gt v4, v3, :cond_0

    .line 455
    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayCount:I

    if-lez v4, :cond_5

    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bymonthdayCount:I

    if-gtz v4, :cond_0

    :cond_5
    move v2, v3

    .line 460
    goto :goto_0

    .line 407
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static copyEventRecurrenceToModel(Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;)V
    .locals 10
    .param p0, "er"    # Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;
    .param p1, "model"    # Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 467
    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->freq:I

    packed-switch v4, :pswitch_data_0

    .line 484
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "freq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->freq:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 469
    :pswitch_0
    iput v7, p1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->freq:I

    .line 488
    :goto_0
    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->interval:I

    if-lez v4, :cond_0

    .line 489
    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->interval:I

    iput v4, p1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->interval:I

    .line 494
    :cond_0
    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->count:I

    iput v4, p1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endCount:I

    .line 495
    iget v4, p1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endCount:I

    if-lez v4, :cond_1

    .line 496
    iput v9, p1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->end:I

    .line 500
    :cond_1
    iget-object v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->until:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 501
    iget-object v4, p1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    if-nez v4, :cond_2

    .line 502
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    iput-object v4, p1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    .line 506
    :cond_2
    :try_start_0
    iget-object v4, p1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iget-object v5, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :goto_1
    iget v4, p1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->end:I

    if-ne v4, v9, :cond_3

    iget-object v4, p1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    if-eqz v4, :cond_3

    .line 513
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "freq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->freq:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 472
    :pswitch_1
    iput v6, p1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->freq:I

    goto :goto_0

    .line 475
    :pswitch_2
    iput v8, p1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->freq:I

    goto :goto_0

    .line 478
    :pswitch_3
    const/4 v4, 0x4

    iput v4, p1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->freq:I

    goto :goto_0

    .line 481
    :pswitch_4
    iput v9, p1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->freq:I

    goto :goto_0

    .line 507
    :catch_0
    move-exception v2

    .line 508
    .local v2, "e":Landroid/util/TimeFormatException;
    const/4 v4, 0x0

    iput-object v4, p1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    goto :goto_1

    .line 516
    .end local v2    # "e":Landroid/util/TimeFormatException;
    :cond_3
    iput v6, p1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->end:I

    .line 521
    :cond_4
    iget-object v4, p1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->weeklyByDayOfWeek:[Z

    invoke-static {v4, v7}, Ljava/util/Arrays;->fill([ZZ)V

    .line 522
    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayCount:I

    if-lez v4, :cond_8

    .line 523
    const/4 v0, 0x0

    .line 524
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayCount:I

    if-ge v3, v4, :cond_6

    .line 525
    iget-object v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byday:[I

    aget v4, v4, v3

    invoke-static {v4}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->day2TimeDay(I)I

    move-result v1

    .line 526
    .local v1, "dayOfWeek":I
    iget-object v4, p1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->weeklyByDayOfWeek:[Z

    aput-boolean v6, v4, v1

    .line 528
    iget v4, p1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->freq:I

    if-ne v4, v8, :cond_5

    iget-object v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayNum:[I

    aget v4, v4, v3

    .line 529
    invoke-static {v4}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->isSupportedMonthlyByNthDayOfWeek(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 533
    iput v1, p1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyByDayOfWeek:I

    .line 534
    iget-object v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayNum:[I

    aget v4, v4, v3

    iput v4, p1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyByNthDayOfWeek:I

    .line 535
    iput v6, p1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyRepeat:I

    .line 536
    add-int/lit8 v0, v0, 0x1

    .line 524
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 540
    .end local v1    # "dayOfWeek":I
    :cond_6
    iget v4, p1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->freq:I

    if-ne v4, v8, :cond_8

    .line 541
    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayCount:I

    if-eq v4, v6, :cond_7

    .line 543
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Can handle only 1 byDayOfWeek in monthly"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 545
    :cond_7
    if-eq v0, v6, :cond_8

    .line 546
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Didn\'t specify which nth day of week to repeat for a monthly"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 553
    .end local v0    # "count":I
    .end local v3    # "i":I
    :cond_8
    iget v4, p1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->freq:I

    if-ne v4, v8, :cond_a

    .line 554
    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bymonthdayCount:I

    if-ne v4, v6, :cond_b

    .line 555
    iget v4, p1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyRepeat:I

    if-ne v4, v6, :cond_9

    .line 556
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Can handle only by monthday or by nth day of week, not both"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 559
    :cond_9
    iget-object v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bymonthday:[I

    aget v4, v4, v7

    iput v4, p1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyByMonthDay:I

    .line 560
    iput v7, p1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyRepeat:I

    .line 566
    :cond_a
    return-void

    .line 561
    :cond_b
    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bymonthCount:I

    if-le v4, v6, :cond_a

    .line 563
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Can handle only one bymonthday"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 467
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static copyModelToEventRecurrence(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;)V
    .locals 7
    .param p0, "model"    # Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;
    .param p1, "eventRecurrence"    # Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 569
    iget v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->recurrenceState:I

    if-nez v2, :cond_0

    .line 570
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "There\'s no recurrence"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 574
    :cond_0
    sget-object v2, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mFreqModelToEventRecurrence:[I

    iget v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->freq:I

    aget v2, v2, v3

    iput v2, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->freq:I

    .line 577
    iget v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->interval:I

    if-gt v2, v5, :cond_3

    .line 578
    iput v4, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->interval:I

    .line 584
    :goto_0
    iget v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->end:I

    packed-switch v2, :pswitch_data_0

    .line 603
    iput v4, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->count:I

    .line 604
    iput-object v6, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->until:Ljava/lang/String;

    .line 609
    :cond_1
    :goto_1
    iput v4, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayCount:I

    .line 610
    iput v4, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bymonthdayCount:I

    .line 612
    iget v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->freq:I

    packed-switch v2, :pswitch_data_1

    .line 660
    :cond_2
    :goto_2
    invoke-static {p1}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->canHandleRecurrenceRule(Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 661
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UI generated recurrence that it can\'t handle. ER:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 662
    invoke-virtual {p1}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Model: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 580
    :cond_3
    iget v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->interval:I

    iput v2, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->interval:I

    goto :goto_0

    .line 586
    :pswitch_0
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    if-eqz v2, :cond_4

    .line 587
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    const-string v3, "UTC"

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 588
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 589
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    invoke-virtual {v2}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->until:Ljava/lang/String;

    .line 590
    iput v4, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->count:I

    goto :goto_1

    .line 592
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "end = END_BY_DATE but endDate is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 596
    :pswitch_1
    iget v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endCount:I

    iput v2, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->count:I

    .line 597
    iput-object v6, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->until:Ljava/lang/String;

    .line 598
    iget v2, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->count:I

    if-gtz v2, :cond_1

    .line 599
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->count:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 614
    :pswitch_2
    iget v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyRepeat:I

    if-nez v2, :cond_7

    .line 615
    iget v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyByMonthDay:I

    if-lez v2, :cond_2

    .line 616
    iget-object v2, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bymonthday:[I

    if-eqz v2, :cond_5

    iget v2, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bymonthdayCount:I

    if-ge v2, v5, :cond_6

    .line 617
    :cond_5
    new-array v2, v5, [I

    iput-object v2, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bymonthday:[I

    .line 619
    :cond_6
    iget-object v2, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bymonthday:[I

    iget v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyByMonthDay:I

    aput v3, v2, v4

    .line 620
    iput v5, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bymonthdayCount:I

    goto/16 :goto_2

    .line 622
    :cond_7
    iget v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyRepeat:I

    if-ne v2, v5, :cond_2

    .line 623
    iget v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyByNthDayOfWeek:I

    invoke-static {v2}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->isSupportedMonthlyByNthDayOfWeek(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 624
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "month repeat by nth week but n is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyByNthDayOfWeek:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 627
    :cond_8
    const/4 v0, 0x1

    .line 628
    .local v0, "count":I
    iget v2, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayCount:I

    if-lt v2, v0, :cond_9

    iget-object v2, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byday:[I

    if-eqz v2, :cond_9

    iget-object v2, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayNum:[I

    if-nez v2, :cond_a

    .line 629
    :cond_9
    new-array v2, v0, [I

    iput-object v2, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byday:[I

    .line 630
    new-array v2, v0, [I

    iput-object v2, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayNum:[I

    .line 632
    :cond_a
    iput v0, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayCount:I

    .line 633
    iget-object v2, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byday:[I

    iget v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyByDayOfWeek:I

    invoke-static {v3}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->timeDay2Day(I)I

    move-result v3

    aput v3, v2, v4

    .line 634
    iget-object v2, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayNum:[I

    iget v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyByNthDayOfWeek:I

    aput v3, v2, v4

    goto/16 :goto_2

    .line 638
    .end local v0    # "count":I
    :pswitch_3
    const/4 v0, 0x0

    .line 639
    .restart local v0    # "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    const/4 v2, 0x7

    if-ge v1, v2, :cond_c

    .line 640
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->weeklyByDayOfWeek:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_b

    .line 641
    add-int/lit8 v0, v0, 0x1

    .line 639
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 645
    :cond_c
    iget v2, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayCount:I

    if-lt v2, v0, :cond_d

    iget-object v2, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byday:[I

    if-eqz v2, :cond_d

    iget-object v2, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayNum:[I

    if-nez v2, :cond_e

    .line 646
    :cond_d
    new-array v2, v0, [I

    iput-object v2, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byday:[I

    .line 647
    new-array v2, v0, [I

    iput-object v2, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayNum:[I

    .line 649
    :cond_e
    iput v0, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayCount:I

    .line 651
    const/4 v1, 0x6

    :goto_4
    if-ltz v1, :cond_2

    .line 652
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->weeklyByDayOfWeek:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_f

    .line 653
    iget-object v2, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayNum:[I

    add-int/lit8 v0, v0, -0x1

    aput v4, v2, v0

    .line 654
    iget-object v2, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byday:[I

    invoke-static {v1}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->timeDay2Day(I)I

    move-result v3

    aput v3, v2, v0

    .line 651
    :cond_f
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 664
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_10
    return-void

    .line 584
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 612
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private doToast()V
    .locals 4

    .prologue
    .line 1102
    const-string v1, "RecurrencePickerDialogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Model = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    invoke-virtual {v3}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v1, v1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->recurrenceState:I

    if-nez v1, :cond_1

    .line 1105
    const-string v0, "Not repeating"

    .line 1111
    .local v0, "rrule":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mToast:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    .line 1112
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 1114
    :cond_0
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mToast:Landroid/widget/Toast;

    .line 1116
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1117
    return-void

    .line 1107
    .end local v0    # "rrule":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mRecurrence:Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    invoke-static {v1, v2}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->copyModelToEventRecurrence(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;)V

    .line 1108
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mRecurrence:Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "rrule":Ljava/lang/String;
    goto :goto_0
.end method

.method public static isSupportedMonthlyByNthDayOfWeek(I)Z
    .locals 1
    .param p0, "num"    # I

    .prologue
    .line 403
    if-lez p0, :cond_0

    const/4 v0, 0x5

    if-le p0, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setEndSpinnerEndDateStr(Ljava/lang/String;)V
    .locals 2
    .param p1, "endDateString"    # Ljava/lang/String;

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndSpinnerArray:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1098
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndSpinnerAdapter:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->notifyDataSetChanged()V

    .line 1099
    return-void
.end method

.method private togglePickerOptions()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 932
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v2, v2, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->recurrenceState:I

    if-nez v2, :cond_0

    .line 933
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mFreqSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 934
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 935
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mIntervalPreText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 936
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mInterval:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 937
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mIntervalPostText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 938
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mMonthRepeatByRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    .line 939
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndCount:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 940
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mPostEndCount:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 941
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndDateTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 942
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mRepeatMonthlyByNthDayOfWeek:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 943
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mRepeatMonthlyByNthDayOfMonth:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 944
    iget-object v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mWeekByDayButtons:[Landroid/widget/ToggleButton;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 945
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 944
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 948
    .end local v0    # "button":Landroid/widget/Button;
    :cond_0
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mView:Landroid/view/View;

    sget v3, Lcom/codetroopers/betterpickers/R$id;->options:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 949
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mFreqSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 950
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 951
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mIntervalPreText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 952
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mInterval:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 953
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mIntervalPostText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 954
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mMonthRepeatByRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    .line 955
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndCount:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 956
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mPostEndCount:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 957
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndDateTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 958
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mRepeatMonthlyByNthDayOfWeek:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 959
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mRepeatMonthlyByNthDayOfMonth:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 960
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mWeekByDayButtons:[Landroid/widget/ToggleButton;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 961
    .restart local v0    # "button":Landroid/widget/Button;
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 960
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 964
    .end local v0    # "button":Landroid/widget/Button;
    :cond_1
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->updateDoneButtonState()V

    .line 965
    return-void
.end method

.method private updateDoneButtonState()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 968
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v1, v1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->recurrenceState:I

    if-nez v1, :cond_0

    .line 969
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 996
    :goto_0
    return-void

    .line 973
    :cond_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mInterval:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 974
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 978
    :cond_1
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndCount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndCount:Landroid/widget/EditText;

    .line 979
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 980
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 984
    :cond_2
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v1, v1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->freq:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 985
    iget-object v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mWeekByDayButtons:[Landroid/widget/ToggleButton;

    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_4

    aget-object v0, v3, v1

    .line 986
    .local v0, "b":Landroid/widget/CompoundButton;
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 987
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 985
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 991
    .end local v0    # "b":Landroid/widget/CompoundButton;
    :cond_4
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 995
    :cond_5
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateEndCountText()V
    .locals 7

    .prologue
    .line 1142
    const-string v0, "%d"

    .line 1143
    .local v0, "END_COUNT_MARKER":Ljava/lang/String;
    iget-object v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/codetroopers/betterpickers/R$plurals;->recurrence_end_count:I

    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v6, v6, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endCount:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 1145
    .local v1, "endString":Ljava/lang/String;
    const-string v4, "%d"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1147
    .local v2, "markerStart":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 1148
    if-nez v2, :cond_1

    .line 1149
    const-string v4, "RecurrencePickerDialogFragment"

    const-string v5, "No text to put in to recurrence\'s end spinner."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :cond_0
    :goto_0
    return-void

    .line 1151
    :cond_1
    const-string v4, "%d"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v3, v2, v4

    .line 1152
    .local v3, "postTextStart":I
    iget-object v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mPostEndCount:Landroid/widget/TextView;

    .line 1153
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    .line 1152
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1153
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1152
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateIntervalText()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 1121
    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mIntervalResId:I

    if-ne v4, v7, :cond_1

    .line 1135
    :cond_0
    :goto_0
    return-void

    .line 1125
    :cond_1
    const-string v0, "%d"

    .line 1126
    .local v0, "INTERVAL_COUNT_MARKER":Ljava/lang/String;
    iget-object v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mResources:Landroid/content/res/Resources;

    iget v5, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mIntervalResId:I

    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v6, v6, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->interval:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 1127
    .local v1, "intervalString":Ljava/lang/String;
    const-string v4, "%d"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1129
    .local v2, "markerStart":I
    if-eq v2, v7, :cond_0

    .line 1130
    const-string v4, "%d"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v3, v2, v4

    .line 1131
    .local v3, "postTextStart":I
    iget-object v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mIntervalPostText:Landroid/widget/TextView;

    .line 1132
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    .line 1131
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1132
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1131
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1133
    iget-object v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mIntervalPreText:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1269
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1270
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "tag_date_picker_frag"

    .line 1271
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    iput-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mDatePickerDialog:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    .line 1272
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mDatePickerDialog:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    if-eqz v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mDatePickerDialog:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    invoke-virtual {v0, p0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->setOnDateSetListener(Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateSetListener;)Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    .line 1275
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 1218
    const/4 v1, -0x1

    .line 1219
    .local v1, "itemIdx":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    .line 1220
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mWeekByDayButtons:[Landroid/widget/ToggleButton;

    aget-object v2, v2, v0

    if-ne p1, v2, :cond_0

    .line 1221
    move v1, v0

    .line 1222
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget-object v2, v2, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->weeklyByDayOfWeek:[Z

    aput-boolean p2, v2, v0

    .line 1219
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1225
    :cond_1
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->updateDialog()V

    .line 1226
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 1232
    sget v0, Lcom/codetroopers/betterpickers/R$id;->repeatMonthlyByNthDayOfMonth:I

    if-ne p2, v0, :cond_1

    .line 1233
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    const/4 v1, 0x0

    iput v1, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyRepeat:I

    .line 1237
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->updateDialog()V

    .line 1238
    return-void

    .line 1234
    :cond_1
    sget v0, Lcom/codetroopers/betterpickers/R$id;->repeatMonthlyByNthDayOfTheWeek:I

    if-ne p2, v0, :cond_0

    .line 1235
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    const/4 v1, 0x1

    iput v1, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyRepeat:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1245
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndDateTextView:Landroid/widget/TextView;

    if-ne v1, p1, :cond_2

    .line 1246
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mDatePickerDialog:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    if-eqz v1, :cond_0

    .line 1247
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mDatePickerDialog:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->dismiss()V

    .line 1249
    :cond_0
    new-instance v1, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    invoke-direct {v1}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mDatePickerDialog:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    .line 1250
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mDatePickerDialog:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    invoke-virtual {v1, p0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->setOnDateSetListener(Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateSetListener;)Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    .line 1251
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mDatePickerDialog:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget-object v2, v2, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->year:I

    iget-object v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget-object v3, v3, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->month:I

    iget-object v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget-object v4, v4, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->setPreselectedDate(III)Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    .line 1252
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mDatePickerDialog:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/codetroopers/betterpickers/recurrencepicker/Utils;->getFirstDayOfWeekAsCalendar(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->setFirstDayOfWeek(I)Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    .line 1253
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mDatePickerDialog:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "tag_date_picker_frag"

    invoke-virtual {v1, v2, v3}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1265
    :cond_1
    :goto_0
    return-void

    .line 1254
    :cond_2
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mDoneButton:Landroid/widget/Button;

    if-ne v1, p1, :cond_1

    .line 1256
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v1, v1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->recurrenceState:I

    if-nez v1, :cond_3

    .line 1257
    const/4 v0, 0x0

    .line 1262
    .local v0, "rrule":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mRecurrenceSetListener:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$OnRecurrenceSetListener;

    invoke-interface {v1, v0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$OnRecurrenceSetListener;->onRecurrenceSet(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->dismiss()V

    goto :goto_0

    .line 1259
    .end local v0    # "rrule":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mRecurrence:Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    invoke-static {v1, v2}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->copyModelToEventRecurrence(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;)V

    .line 1260
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mRecurrence:Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "rrule":Ljava/lang/String;
    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 26
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mRecurrence:Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/codetroopers/betterpickers/recurrencepicker/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->timeDay2Day(I)I

    move-result v3

    iput v3, v2, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->wkst:I

    .line 670
    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 672
    const/16 v16, 0x0

    .line 673
    .local v16, "endCountHasFocus":Z
    if-eqz p3, :cond_3

    .line 674
    const-string v2, "bundle_model"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    .line 675
    .local v20, "m":Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;
    if-eqz v20, :cond_0

    .line 676
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    .line 678
    :cond_0
    const-string v2, "bundle_end_count_has_focus"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v16

    .line 709
    .end local v20    # "m":Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mResources:Landroid/content/res/Resources;

    .line 710
    sget v2, Lcom/codetroopers/betterpickers/R$layout;->recurrencepicker:I

    const/4 v3, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mView:Landroid/view/View;

    .line 712
    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    .line 713
    .local v8, "activity":Landroid/app/Activity;
    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    .line 715
    .local v11, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mView:Landroid/view/View;

    sget v3, Lcom/codetroopers/betterpickers/R$id;->repeat_switch:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/SwitchCompat;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mRepeatSwitch:Landroid/support/v7/widget/SwitchCompat;

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget-boolean v2, v2, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->forceHideSwitchButton:Z

    if-eqz v2, :cond_7

    .line 717
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mRepeatSwitch:Landroid/support/v7/widget/SwitchCompat;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 718
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mRepeatSwitch:Landroid/support/v7/widget/SwitchCompat;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    .line 719
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    const/4 v3, 0x1

    iput v3, v2, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->recurrenceState:I

    .line 731
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mView:Landroid/view/View;

    sget v3, Lcom/codetroopers/betterpickers/R$id;->freqSpinner:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mFreqSpinner:Landroid/widget/Spinner;

    .line 732
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mFreqSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 733
    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/codetroopers/betterpickers/R$array;->recurrence_freq:I

    sget v4, Lcom/codetroopers/betterpickers/R$layout;->recurrencepicker_freq_item:I

    invoke-static {v2, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v17

    .line 735
    .local v17, "freqAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    sget v2, Lcom/codetroopers/betterpickers/R$layout;->recurrencepicker_freq_item:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 736
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mFreqSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 738
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mView:Landroid/view/View;

    sget v3, Lcom/codetroopers/betterpickers/R$id;->interval:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mInterval:Landroid/widget/EditText;

    .line 739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mInterval:Landroid/widget/EditText;

    new-instance v3, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$2;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v6, 0x63

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$2;-><init>(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;III)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mView:Landroid/view/View;

    sget v3, Lcom/codetroopers/betterpickers/R$id;->intervalPreText:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mIntervalPreText:Landroid/widget/TextView;

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mView:Landroid/view/View;

    sget v3, Lcom/codetroopers/betterpickers/R$id;->intervalPostText:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mIntervalPostText:Landroid/widget/TextView;

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/codetroopers/betterpickers/R$string;->recurrence_end_continously:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndNeverStr:Ljava/lang/String;

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/codetroopers/betterpickers/R$string;->recurrence_end_date_label:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndDateLabel:Ljava/lang/String;

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/codetroopers/betterpickers/R$string;->recurrence_end_count_label:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndCountLabel:Ljava/lang/String;

    .line 756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndSpinnerArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndNeverStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndSpinnerArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndDateLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndSpinnerArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndCountLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mView:Landroid/view/View;

    sget v3, Lcom/codetroopers/betterpickers/R$id;->endSpinner:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndSpinner:Landroid/widget/Spinner;

    .line 760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 761
    new-instance v2, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndSpinnerArray:Ljava/util/ArrayList;

    sget v6, Lcom/codetroopers/betterpickers/R$layout;->recurrencepicker_freq_item:I

    sget v7, Lcom/codetroopers/betterpickers/R$layout;->recurrencepicker_end_text:I

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;-><init>(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;Landroid/content/Context;Ljava/util/ArrayList;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndSpinnerAdapter:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndSpinnerAdapter:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;

    sget v3, Lcom/codetroopers/betterpickers/R$layout;->recurrencepicker_freq_item:I

    invoke-virtual {v2, v3}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;->setDropDownViewResource(I)V

    .line 764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndSpinnerAdapter:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$EndSpinnerAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mView:Landroid/view/View;

    sget v3, Lcom/codetroopers/betterpickers/R$id;->endCount:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndCount:Landroid/widget/EditText;

    .line 767
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndCount:Landroid/widget/EditText;

    new-instance v3, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$3;

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/16 v6, 0x2da

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$3;-><init>(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;III)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 777
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mView:Landroid/view/View;

    sget v3, Lcom/codetroopers/betterpickers/R$id;->postEndCount:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mPostEndCount:Landroid/widget/TextView;

    .line 779
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mView:Landroid/view/View;

    sget v3, Lcom/codetroopers/betterpickers/R$id;->endDate:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndDateTextView:Landroid/widget/TextView;

    .line 780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndDateTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 781
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget-object v2, v2, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    if-nez v2, :cond_1

    .line 782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    new-instance v3, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mTime:Landroid/text/format/Time;

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    iput-object v3, v2, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    .line 783
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v2, v2, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->freq:I

    packed-switch v2, :pswitch_data_0

    .line 796
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget-object v2, v2, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 799
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mView:Landroid/view/View;

    sget v3, Lcom/codetroopers/betterpickers/R$id;->weekGroup:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mWeekGroup:Landroid/widget/LinearLayout;

    .line 800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mView:Landroid/view/View;

    sget v3, Lcom/codetroopers/betterpickers/R$id;->weekGroup2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mWeekGroup2:Landroid/widget/LinearLayout;

    .line 803
    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v12

    .line 805
    .local v12, "dayOfWeekString":[Ljava/lang/String;
    const/4 v2, 0x7

    new-array v2, v2, [[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;

    .line 807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/codetroopers/betterpickers/R$array;->repeat_by_nth_sun:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 808
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/codetroopers/betterpickers/R$array;->repeat_by_nth_mon:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 809
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/codetroopers/betterpickers/R$array;->repeat_by_nth_tues:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/codetroopers/betterpickers/R$array;->repeat_by_nth_wed:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/codetroopers/betterpickers/R$array;->repeat_by_nth_thurs:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 812
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/codetroopers/betterpickers/R$array;->repeat_by_nth_fri:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 813
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/codetroopers/betterpickers/R$array;->repeat_by_nth_sat:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 816
    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/codetroopers/betterpickers/recurrencepicker/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v19

    .line 819
    .local v19, "idx":I
    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v12

    .line 824
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-ge v2, v3, :cond_a

    .line 826
    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    .line 827
    .local v14, "display":Landroid/view/Display;
    new-instance v23, Landroid/util/DisplayMetrics;

    invoke-direct/range {v23 .. v23}, Landroid/util/DisplayMetrics;-><init>()V

    .line 828
    .local v23, "outMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 830
    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v13, v2, Landroid/util/DisplayMetrics;->density:F

    .line 831
    .local v13, "density":F
    move-object/from16 v0, v23

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    div-float v15, v2, v13

    .line 832
    .local v15, "dpWidth":F
    const/high16 v2, 0x43e10000    # 450.0f

    cmpl-float v2, v15, v2

    if-lez v2, :cond_9

    .line 833
    const/16 v21, 0x7

    .line 834
    .local v21, "numOfButtonsInRow1":I
    const/16 v22, 0x0

    .line 835
    .local v22, "numOfButtonsInRow2":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mWeekGroup2:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 836
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mWeekGroup2:Landroid/widget/LinearLayout;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 862
    .end local v13    # "density":F
    .end local v14    # "display":Landroid/view/Display;
    .end local v15    # "dpWidth":F
    .end local v23    # "outMetrics":Landroid/util/DisplayMetrics;
    :goto_3
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_4
    const/4 v2, 0x7

    move/from16 v0, v18

    if-ge v0, v2, :cond_d

    .line 863
    move/from16 v0, v18

    move/from16 v1, v21

    if-lt v0, v1, :cond_c

    .line 864
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mWeekGroup:Landroid/widget/LinearLayout;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 862
    :cond_2
    :goto_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 680
    .end local v8    # "activity":Landroid/app/Activity;
    .end local v11    # "config":Landroid/content/res/Configuration;
    .end local v12    # "dayOfWeekString":[Ljava/lang/String;
    .end local v17    # "freqAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v18    # "i":I
    .end local v19    # "idx":I
    .end local v21    # "numOfButtonsInRow1":I
    .end local v22    # "numOfButtonsInRow2":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    .line 681
    .local v9, "bundle":Landroid/os/Bundle;
    if-eqz v9, :cond_6

    .line 682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mTime:Landroid/text/format/Time;

    const-string v3, "bundle_event_start_time"

    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 684
    const-string v2, "bundle_event_time_zone"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 685
    .local v25, "tz":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v25

    iput-object v0, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 688
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget-object v2, v2, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->weeklyByDayOfWeek:[Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->weekDay:I

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 692
    const-string v2, "bundle_event_rrule"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 693
    .local v24, "rrule":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    const/4 v3, 0x1

    iput v3, v2, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->recurrenceState:I

    .line 695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mRecurrence:Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mRecurrence:Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    invoke-static {v2, v3}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->copyEventRecurrenceToModel(Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;)V

    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mRecurrence:Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    iget v2, v2, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayCount:I

    if-nez v2, :cond_5

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget-object v2, v2, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->weeklyByDayOfWeek:[Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->weekDay:I

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 703
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    const-string v3, "bundle_hide_switch_button"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->forceHideSwitchButton:Z

    goto/16 :goto_0

    .line 705
    .end local v24    # "rrule":Ljava/lang/String;
    .end local v25    # "tz":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    goto/16 :goto_0

    .line 721
    .end local v9    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "activity":Landroid/app/Activity;
    .restart local v11    # "config":Landroid/content/res/Configuration;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mRepeatSwitch:Landroid/support/v7/widget/SwitchCompat;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v2, v2, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->recurrenceState:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_8

    const/4 v2, 0x1

    :goto_6
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 722
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mRepeatSwitch:Landroid/support/v7/widget/SwitchCompat;

    new-instance v3, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$1;-><init>(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_1

    .line 721
    :cond_8
    const/4 v2, 0x0

    goto :goto_6

    .line 787
    .restart local v17    # "freqAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget-object v2, v2, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iget v3, v2, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/text/format/Time;->month:I

    goto/16 :goto_2

    .line 790
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget-object v2, v2, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iget v3, v2, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x3

    iput v3, v2, Landroid/text/format/Time;->month:I

    goto/16 :goto_2

    .line 793
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget-object v2, v2, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iget v3, v2, Landroid/text/format/Time;->year:I

    add-int/lit8 v3, v3, 0x3

    iput v3, v2, Landroid/text/format/Time;->year:I

    goto/16 :goto_2

    .line 838
    .restart local v12    # "dayOfWeekString":[Ljava/lang/String;
    .restart local v13    # "density":F
    .restart local v14    # "display":Landroid/view/Display;
    .restart local v15    # "dpWidth":F
    .restart local v19    # "idx":I
    .restart local v23    # "outMetrics":Landroid/util/DisplayMetrics;
    :cond_9
    const/16 v21, 0x4

    .line 839
    .restart local v21    # "numOfButtonsInRow1":I
    const/16 v22, 0x3

    .line 841
    .restart local v22    # "numOfButtonsInRow2":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mWeekGroup2:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 844
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mWeekGroup2:Landroid/widget/LinearLayout;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 846
    .end local v13    # "density":F
    .end local v14    # "display":Landroid/view/Display;
    .end local v15    # "dpWidth":F
    .end local v21    # "numOfButtonsInRow1":I
    .end local v22    # "numOfButtonsInRow2":I
    .end local v23    # "outMetrics":Landroid/util/DisplayMetrics;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v3, 0x1c2

    if-le v2, v3, :cond_b

    .line 847
    const/16 v21, 0x7

    .line 848
    .restart local v21    # "numOfButtonsInRow1":I
    const/16 v22, 0x0

    .line 849
    .restart local v22    # "numOfButtonsInRow2":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mWeekGroup2:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 850
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mWeekGroup2:Landroid/widget/LinearLayout;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 852
    .end local v21    # "numOfButtonsInRow1":I
    .end local v22    # "numOfButtonsInRow2":I
    :cond_b
    const/16 v21, 0x4

    .line 853
    .restart local v21    # "numOfButtonsInRow1":I
    const/16 v22, 0x3

    .line 855
    .restart local v22    # "numOfButtonsInRow2":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mWeekGroup2:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 858
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mWeekGroup2:Landroid/widget/LinearLayout;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 868
    .restart local v18    # "i":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mWeekByDayButtons:[Landroid/widget/ToggleButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mWeekGroup:Landroid/widget/LinearLayout;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    aput-object v2, v3, v19

    .line 869
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mWeekByDayButtons:[Landroid/widget/ToggleButton;

    aget-object v2, v2, v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->TIME_DAY_TO_CALENDAR_DAY:[I

    aget v3, v3, v19

    aget-object v3, v12, v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 870
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mWeekByDayButtons:[Landroid/widget/ToggleButton;

    aget-object v2, v2, v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->TIME_DAY_TO_CALENDAR_DAY:[I

    aget v3, v3, v19

    aget-object v3, v12, v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 871
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mWeekByDayButtons:[Landroid/widget/ToggleButton;

    aget-object v2, v2, v19

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 873
    add-int/lit8 v19, v19, 0x1

    const/4 v2, 0x7

    move/from16 v0, v19

    if-lt v0, v2, :cond_2

    .line 874
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 879
    :cond_d
    const/16 v18, 0x0

    :goto_7
    const/4 v2, 0x3

    move/from16 v0, v18

    if-ge v0, v2, :cond_10

    .line 880
    move/from16 v0, v18

    move/from16 v1, v22

    if-lt v0, v1, :cond_f

    .line 881
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mWeekGroup2:Landroid/widget/LinearLayout;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 879
    :cond_e
    :goto_8
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 884
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mWeekByDayButtons:[Landroid/widget/ToggleButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mWeekGroup2:Landroid/widget/LinearLayout;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    aput-object v2, v3, v19

    .line 885
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mWeekByDayButtons:[Landroid/widget/ToggleButton;

    aget-object v2, v2, v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->TIME_DAY_TO_CALENDAR_DAY:[I

    aget v3, v3, v19

    aget-object v3, v12, v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mWeekByDayButtons:[Landroid/widget/ToggleButton;

    aget-object v2, v2, v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->TIME_DAY_TO_CALENDAR_DAY:[I

    aget v3, v3, v19

    aget-object v3, v12, v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 887
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mWeekByDayButtons:[Landroid/widget/ToggleButton;

    aget-object v2, v2, v19

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 889
    add-int/lit8 v19, v19, 0x1

    const/4 v2, 0x7

    move/from16 v0, v19

    if-lt v0, v2, :cond_e

    .line 890
    const/16 v19, 0x0

    goto :goto_8

    .line 894
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mView:Landroid/view/View;

    sget v3, Lcom/codetroopers/betterpickers/R$id;->monthGroup:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mMonthGroup:Landroid/widget/LinearLayout;

    .line 895
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mView:Landroid/view/View;

    sget v3, Lcom/codetroopers/betterpickers/R$id;->monthGroup:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mMonthRepeatByRadioGroup:Landroid/widget/RadioGroup;

    .line 896
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mMonthRepeatByRadioGroup:Landroid/widget/RadioGroup;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mView:Landroid/view/View;

    sget v3, Lcom/codetroopers/betterpickers/R$id;->repeatMonthlyByNthDayOfTheWeek:I

    .line 898
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mRepeatMonthlyByNthDayOfWeek:Landroid/widget/RadioButton;

    .line 899
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mView:Landroid/view/View;

    sget v3, Lcom/codetroopers/betterpickers/R$id;->repeatMonthlyByNthDayOfMonth:I

    .line 900
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mRepeatMonthlyByNthDayOfMonth:Landroid/widget/RadioButton;

    .line 902
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mView:Landroid/view/View;

    sget v3, Lcom/codetroopers/betterpickers/R$id;->done_button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mDoneButton:Landroid/widget/Button;

    .line 903
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mDoneButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 905
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mView:Landroid/view/View;

    sget v3, Lcom/codetroopers/betterpickers/R$id;->cancel_button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 907
    .local v10, "cancelButton":Landroid/widget/Button;
    new-instance v2, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$4;-><init>(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)V

    invoke-virtual {v10, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 914
    invoke-direct/range {p0 .. p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->togglePickerOptions()V

    .line 915
    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->updateDialog()V

    .line 916
    if-eqz v16, :cond_11

    .line 917
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndCount:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 919
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mView:Landroid/view/View;

    return-object v2

    .line 783
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDateSet(Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;III)V
    .locals 4
    .param p1, "view"    # Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    const/4 v3, 0x0

    .line 1203
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget-object v0, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    if-nez v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mTime:Landroid/text/format/Time;

    iget-object v2, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    .line 1205
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget-object v0, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget-object v1, v1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget-object v2, v2, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iput v3, v2, Landroid/text/format/Time;->second:I

    iput v3, v1, Landroid/text/format/Time;->minute:I

    iput v3, v0, Landroid/text/format/Time;->hour:I

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget-object v0, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iput p2, v0, Landroid/text/format/Time;->year:I

    .line 1208
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget-object v0, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iput p3, v0, Landroid/text/format/Time;->month:I

    .line 1209
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget-object v0, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iput p4, v0, Landroid/text/format/Time;->monthDay:I

    .line 1210
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget-object v0, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1211
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->updateDialog()V

    .line 1212
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 925
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 926
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    invoke-interface {v0, p1}, Lcom/codetroopers/betterpickers/OnDialogDismissListener;->onDialogDismiss(Landroid/content/DialogInterface;)V

    .line 929
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/16 v3, 0x2da

    const/16 v2, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1163
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mFreqSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 1164
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iput p3, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->freq:I

    .line 1193
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->updateDialog()V

    .line 1194
    return-void

    .line 1165
    :cond_1
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 1166
    packed-switch p3, :pswitch_data_0

    .line 1184
    :goto_1
    iget-object v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndCount:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v0, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->end:I

    if-ne v0, v5, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1186
    iget-object v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndDateTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v0, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->end:I

    if-ne v0, v4, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1188
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mPostEndCount:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v3, v3, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->end:I

    if-ne v3, v5, :cond_6

    iget-boolean v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mHidePostEndCount:Z

    if-nez v3, :cond_6

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1168
    :pswitch_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iput v1, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->end:I

    goto :goto_1

    .line 1171
    :pswitch_1
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iput v4, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->end:I

    goto :goto_1

    .line 1174
    :pswitch_2
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iput v5, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->end:I

    .line 1176
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v0, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endCount:I

    if-gt v0, v4, :cond_3

    .line 1177
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iput v4, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endCount:I

    .line 1181
    :cond_2
    :goto_5
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->updateEndCountText()V

    goto :goto_1

    .line 1178
    :cond_3
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v0, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endCount:I

    if-le v0, v3, :cond_2

    .line 1179
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iput v3, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endCount:I

    goto :goto_5

    :cond_4
    move v0, v2

    .line 1184
    goto :goto_2

    :cond_5
    move v0, v2

    .line 1186
    goto :goto_3

    :cond_6
    move v1, v2

    .line 1188
    goto :goto_4

    .line 1166
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1199
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1000
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1001
    const-string v0, "bundle_model"

    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1002
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndCount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    const-string v0, "bundle_end_count_has_focus"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1005
    :cond_0
    return-void
.end method

.method public setOnDismissListener(Lcom/codetroopers/betterpickers/OnDialogDismissListener;)Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;
    .locals 0
    .param p1, "ondialogdismisslistener"    # Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    .prologue
    .line 1426
    iput-object p1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    .line 1427
    return-object p0
.end method

.method public setOnRecurrenceSetListener(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$OnRecurrenceSetListener;)V
    .locals 0
    .param p1, "l"    # Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$OnRecurrenceSetListener;

    .prologue
    .line 1283
    iput-object p1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mRecurrenceSetListener:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$OnRecurrenceSetListener;

    .line 1284
    return-void
.end method

.method public updateDialog()V
    .locals 13

    .prologue
    const/4 v5, 0x5

    const/4 v12, 0x1

    const/16 v8, 0x8

    const/4 v11, 0x2

    const/4 v7, 0x0

    .line 1011
    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v6, v6, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->interval:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1012
    .local v3, "intervalStr":Ljava/lang/String;
    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mInterval:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1013
    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mInterval:Landroid/widget/EditText;

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1016
    :cond_0
    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mFreqSpinner:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v9, v9, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->freq:I

    invoke-virtual {v6, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1017
    iget-object v9, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mWeekGroup:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v6, v6, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->freq:I

    if-ne v6, v11, :cond_4

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1018
    iget-object v9, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mWeekGroup2:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v6, v6, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->freq:I

    if-ne v6, v11, :cond_5

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1019
    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mMonthGroup:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v9, v9, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->freq:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    move v8, v7

    :cond_1
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1021
    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v6, v6, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->freq:I

    packed-switch v6, :pswitch_data_0

    .line 1072
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->updateIntervalText()V

    .line 1073
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->updateDoneButtonState()V

    .line 1075
    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndSpinner:Landroid/widget/Spinner;

    iget-object v8, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v8, v8, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->end:I

    invoke-virtual {v6, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1076
    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v6, v6, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->end:I

    if-ne v6, v12, :cond_b

    .line 1077
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget-object v8, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endDate:Landroid/text/format/Time;

    .line 1078
    invoke-virtual {v8, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    const/high16 v7, 0x20000

    .line 1077
    invoke-static {v6, v8, v9, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 1079
    .local v1, "dateStr":Ljava/lang/String;
    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndDateTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    .end local v1    # "dateStr":Ljava/lang/String;
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v6, v8

    .line 1017
    goto :goto_0

    :cond_5
    move v6, v8

    .line 1018
    goto :goto_1

    .line 1023
    :pswitch_0
    sget v6, Lcom/codetroopers/betterpickers/R$plurals;->recurrence_interval_hourly:I

    iput v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mIntervalResId:I

    goto :goto_2

    .line 1026
    :pswitch_1
    sget v6, Lcom/codetroopers/betterpickers/R$plurals;->recurrence_interval_daily:I

    iput v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mIntervalResId:I

    goto :goto_2

    .line 1030
    :pswitch_2
    sget v6, Lcom/codetroopers/betterpickers/R$plurals;->recurrence_interval_weekly:I

    iput v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mIntervalResId:I

    .line 1031
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    const/4 v6, 0x7

    if-ge v2, v6, :cond_2

    .line 1032
    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mWeekByDayButtons:[Landroid/widget/ToggleButton;

    aget-object v6, v6, v2

    iget-object v8, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->weeklyByDayOfWeek:[Z

    aget-boolean v8, v8, v2

    invoke-virtual {v6, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1031
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1037
    .end local v2    # "i":I
    :pswitch_3
    sget v6, Lcom/codetroopers/betterpickers/R$plurals;->recurrence_interval_monthly:I

    iput v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mIntervalResId:I

    .line 1039
    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v6, v6, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyRepeat:I

    if-nez v6, :cond_9

    .line 1040
    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mMonthRepeatByRadioGroup:Landroid/widget/RadioGroup;

    sget v8, Lcom/codetroopers/betterpickers/R$id;->repeatMonthlyByNthDayOfMonth:I

    invoke-virtual {v6, v8}, Landroid/widget/RadioGroup;->check(I)V

    .line 1045
    :cond_6
    :goto_5
    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mMonthRepeatByDayOfWeekStr:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 1046
    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v6, v6, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyByNthDayOfWeek:I

    if-nez v6, :cond_8

    .line 1047
    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget-object v8, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mTime:Landroid/text/format/Time;

    iget v8, v8, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v8, v8, 0x6

    div-int/lit8 v8, v8, 0x7

    iput v8, v6, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyByNthDayOfWeek:I

    .line 1050
    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v6, v6, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyByNthDayOfWeek:I

    if-lt v6, v5, :cond_7

    .line 1051
    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    const/4 v8, -0x1

    iput v8, v6, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyByNthDayOfWeek:I

    .line 1053
    :cond_7
    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget-object v8, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mTime:Landroid/text/format/Time;

    iget v8, v8, Landroid/text/format/Time;->weekDay:I

    iput v8, v6, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyByDayOfWeek:I

    .line 1056
    :cond_8
    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;

    iget-object v8, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v8, v8, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyByDayOfWeek:I

    aget-object v4, v6, v8

    .line 1060
    .local v4, "monthlyByNthDayOfWeekStrs":[Ljava/lang/String;
    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v6, v6, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyByNthDayOfWeek:I

    if-gez v6, :cond_a

    .line 1062
    .local v5, "msgIndex":I
    :goto_6
    add-int/lit8 v6, v5, -0x1

    aget-object v6, v4, v6

    iput-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mMonthRepeatByDayOfWeekStr:Ljava/lang/String;

    .line 1064
    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mRepeatMonthlyByNthDayOfWeek:Landroid/widget/RadioButton;

    iget-object v8, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mMonthRepeatByDayOfWeekStr:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1041
    .end local v4    # "monthlyByNthDayOfWeekStrs":[Ljava/lang/String;
    .end local v5    # "msgIndex":I
    :cond_9
    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v6, v6, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyRepeat:I

    if-ne v6, v12, :cond_6

    .line 1042
    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mMonthRepeatByRadioGroup:Landroid/widget/RadioGroup;

    sget v8, Lcom/codetroopers/betterpickers/R$id;->repeatMonthlyByNthDayOfTheWeek:I

    invoke-virtual {v6, v8}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_5

    .line 1060
    .restart local v4    # "monthlyByNthDayOfWeekStrs":[Ljava/lang/String;
    :cond_a
    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v5, v6, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->monthlyByNthDayOfWeek:I

    goto :goto_6

    .line 1069
    .end local v4    # "monthlyByNthDayOfWeekStrs":[Ljava/lang/String;
    :pswitch_4
    sget v6, Lcom/codetroopers/betterpickers/R$plurals;->recurrence_interval_yearly:I

    iput v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mIntervalResId:I

    goto/16 :goto_2

    .line 1081
    :cond_b
    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v6, v6, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->end:I

    if-ne v6, v11, :cond_3

    .line 1085
    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mModel:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    iget v6, v6, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endCount:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1086
    .local v0, "countStr":Ljava/lang/String;
    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndCount:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1087
    iget-object v6, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->mEndCount:Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1021
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

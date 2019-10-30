.class public Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "RadialTimePickerDialogFragment.java"

# interfaces
.implements Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout$OnValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$KeyboardListener;,
        Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;,
        Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$OnTimeSetListener;
    }
.end annotation


# static fields
.field public static final AM:I = 0x0

.field public static final AMPM_INDEX:I = 0x2

.field public static final ENABLE_PICKER_INDEX:I = 0x3

.field public static final HOUR_INDEX:I = 0x0

.field private static final KEY_CURRENT_DATE:Ljava/lang/String; = "current_date"

.field private static final KEY_CURRENT_ITEM_SHOWING:Ljava/lang/String; = "current_item_showing"

.field private static final KEY_FUTURE_MINUTES_LIMIT:Ljava/lang/String; = "future_minutes_limit"

.field private static final KEY_HOUR_OF_DAY:Ljava/lang/String; = "hour_of_day"

.field private static final KEY_IN_KB_MODE:Ljava/lang/String; = "in_kb_mode"

.field private static final KEY_IS_24_HOUR_VIEW:Ljava/lang/String; = "is_24_hour_view"

.field private static final KEY_MINUTE:Ljava/lang/String; = "minute"

.field private static final KEY_PAST_MINUTES_LIMIT:Ljava/lang/String; = "past_minutes_limit"

.field private static final KEY_PICKER_DATE:Ljava/lang/String; = "picker_date"

.field private static final KEY_STYLE:Ljava/lang/String; = "theme"

.field private static final KEY_TYPED_TIMES:Ljava/lang/String; = "typed_times"

.field public static final MINUTE_INDEX:I = 0x1

.field public static final PM:I = 0x1

.field private static final PULSE_ANIMATOR_DELAY:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "TimePickerDialog"


# instance fields
.field private mAllowAutoAdvance:Z

.field private mAmKeyCode:I

.field private mAmPmHitspace:Landroid/view/View;

.field private mAmPmTextView:Landroid/widget/TextView;

.field private mAmText:Ljava/lang/String;

.field private mCallback:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$OnTimeSetListener;

.field private mCancelText:Ljava/lang/String;

.field private mDeletedKeyFormat:Ljava/lang/String;

.field private mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

.field private mDoneButton:Landroid/widget/Button;

.field private mDoneText:Ljava/lang/String;

.field private mDoublePlaceholderText:Ljava/lang/String;

.field private mError:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

.field private mFutureMinutesLimit:Ljava/lang/Integer;

.field private mHapticFeedbackController:Lcom/codetroopers/betterpickers/HapticFeedbackController;

.field private mHourPickerDescription:Ljava/lang/String;

.field private mHourSpaceView:Landroid/widget/TextView;

.field private mHourView:Landroid/widget/TextView;

.field private mInKbMode:Z

.field private mInitialHourOfDay:I

.field private mInitialMinute:I

.field private mIs24HourMode:Ljava/lang/Boolean;

.field private mLegalTimesTree:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

.field private mMinutePickerDescription:Ljava/lang/String;

.field private mMinuteSpaceView:Landroid/widget/TextView;

.field private mMinuteView:Landroid/widget/TextView;

.field private mPastMinutesLimit:Ljava/lang/Integer;

.field private mPickerDate:Ljava/util/Calendar;

.field private mPlaceholderText:C

.field private mPmKeyCode:I

.field private mPmText:Ljava/lang/String;

.field private mSelectHours:Ljava/lang/String;

.field private mSelectMinutes:Ljava/lang/String;

.field private mSelectedColor:I

.field private mStyleResId:I

.field private mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

.field private mTitleText:Ljava/lang/String;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mTypedTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUnselectedColor:I

.field private mValidateDateTime:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 148
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 149
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 150
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mInitialMinute:I

    .line 151
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mInitialHourOfDay:I

    .line 152
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mInKbMode:Z

    .line 153
    sget v1, Lcom/codetroopers/betterpickers/R$style;->BetterPickersRadialTimePickerDialog_PrimaryColor:I

    iput v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mStyleResId:I

    .line 154
    return-void
.end method

.method static synthetic access$100(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;IZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->setCurrentItemShowing(IZZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mInKbMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->isTypedTimeFullyLegal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->finishKbMode(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;)Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->updateAmPmDisplay(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->processKeyUp(I)Z

    move-result v0

    return v0
.end method

.method private addKeyIfLegal(I)Z
    .locals 8
    .param p1, "keyCode"    # I

    .prologue
    const/4 v7, 0x7

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 765
    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mIs24HourMode:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mIs24HourMode:Ljava/lang/Boolean;

    .line 766
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->isTypedTimeFullyLegal()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 787
    :cond_1
    :goto_0
    return v1

    .line 770
    :cond_2
    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTypedTimes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->isTypedTimeLegalSoFar()Z

    move-result v3

    if-nez v3, :cond_3

    .line 772
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->deleteLastTypedKey()I

    goto :goto_0

    .line 776
    :cond_3
    invoke-direct {p0, p1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getValFromKeyCode(I)I

    move-result v0

    .line 777
    .local v0, "val":I
    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    const-string v4, "%d"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/codetroopers/betterpickers/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 779
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->isTypedTimeFullyLegal()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 780
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mIs24HourMode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x3

    if-gt v1, v3, :cond_4

    .line 781
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 782
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 784
    :cond_4
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_5
    move v1, v2

    .line 787
    goto :goto_0
.end method

.method private deleteLastTypedKey()I
    .locals 3

    .prologue
    .line 823
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 824
    .local v0, "deleted":I
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->isTypedTimeFullyLegal()Z

    move-result v1

    if-nez v1, :cond_0

    .line 825
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mDoneButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 827
    :cond_0
    return v0
.end method

.method private finishKbMode(Z)V
    .locals 6
    .param p1, "updateDisplays"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 836
    iput-boolean v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mInKbMode:Z

    .line 837
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 838
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getEnteredTime([Ljava/lang/Boolean;)[I

    move-result-object v0

    .line 839
    .local v0, "values":[I
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    aget v2, v0, v4

    aget v3, v0, v5

    invoke-virtual {v1, v2, v3}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->setTime(II)V

    .line 840
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mIs24HourMode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 841
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    const/4 v2, 0x2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->setAmOrPm(I)V

    .line 843
    :cond_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 845
    .end local v0    # "values":[I
    :cond_1
    if-eqz p1, :cond_2

    .line 846
    invoke-direct {p0, v4}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->updateDisplay(Z)V

    .line 847
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v1, v5}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->trySettingInputEnabled(Z)Z

    .line 849
    :cond_2
    return-void
.end method

.method private generateLegalTimesTree()V
    .locals 23

    .prologue
    .line 1002
    const/4 v6, 0x7

    .line 1003
    .local v6, "k0":I
    const/16 v7, 0x8

    .line 1004
    .local v7, "k1":I
    const/16 v8, 0x9

    .line 1005
    .local v8, "k2":I
    const/16 v9, 0xa

    .line 1006
    .local v9, "k3":I
    const/16 v10, 0xb

    .line 1007
    .local v10, "k4":I
    const/16 v11, 0xc

    .line 1008
    .local v11, "k5":I
    const/16 v12, 0xd

    .line 1009
    .local v12, "k6":I
    const/16 v13, 0xe

    .line 1010
    .local v13, "k7":I
    const/16 v14, 0xf

    .line 1011
    .local v14, "k8":I
    const/16 v15, 0x10

    .line 1014
    .local v15, "k9":I
    new-instance v20, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;[I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mLegalTimesTree:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mIs24HourMode:Ljava/lang/Boolean;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1017
    new-instance v16, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;[I)V

    .line 1018
    .local v16, "minuteFirstDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    new-instance v17, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    const/16 v21, 0x6

    aput v12, v20, v21

    const/16 v21, 0x7

    aput v13, v20, v21

    const/16 v21, 0x8

    aput v14, v20, v21

    const/16 v21, 0x9

    aput v15, v20, v21

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;[I)V

    .line 1020
    .local v17, "minuteSecondDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    invoke-virtual/range {v16 .. v17}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1023
    new-instance v4, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;[I)V

    .line 1024
    .local v4, "firstDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mLegalTimesTree:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1027
    new-instance v18, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;[I)V

    .line 1028
    .local v18, "secondDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1030
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1033
    new-instance v19, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v12, v20, v21

    const/16 v21, 0x1

    aput v13, v20, v21

    const/16 v21, 0x2

    aput v14, v20, v21

    const/16 v21, 0x3

    aput v15, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;[I)V

    .line 1035
    .local v19, "thirdDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    invoke-virtual/range {v18 .. v19}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1038
    new-instance v18, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    .end local v18    # "secondDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v12, v20, v21

    const/16 v21, 0x1

    aput v13, v20, v21

    const/16 v21, 0x2

    aput v14, v20, v21

    const/16 v21, 0x3

    aput v15, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;[I)V

    .line 1039
    .restart local v18    # "secondDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1041
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1044
    new-instance v4, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    .end local v4    # "firstDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v8, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;[I)V

    .line 1045
    .restart local v4    # "firstDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mLegalTimesTree:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1048
    new-instance v18, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    .end local v18    # "secondDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;[I)V

    .line 1049
    .restart local v18    # "secondDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1051
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1054
    new-instance v18, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    .end local v18    # "secondDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v10, v20, v21

    const/16 v21, 0x1

    aput v11, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;[I)V

    .line 1055
    .restart local v18    # "secondDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1057
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1060
    new-instance v4, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    .end local v4    # "firstDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    const/16 v20, 0x7

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v9, v20, v21

    const/16 v21, 0x1

    aput v10, v20, v21

    const/16 v21, 0x2

    aput v11, v20, v21

    const/16 v21, 0x3

    aput v12, v20, v21

    const/16 v21, 0x4

    aput v13, v20, v21

    const/16 v21, 0x5

    aput v14, v20, v21

    const/16 v21, 0x6

    aput v15, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;[I)V

    .line 1061
    .restart local v4    # "firstDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mLegalTimesTree:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1063
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1126
    .end local v16    # "minuteFirstDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    .end local v17    # "minuteSecondDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    :goto_0
    return-void

    .line 1067
    .end local v4    # "firstDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    .end local v18    # "secondDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    .end local v19    # "thirdDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    :cond_0
    new-instance v3, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getAmOrPmKeyCode(I)I

    move-result v22

    aput v22, v20, v21

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getAmOrPmKeyCode(I)I

    move-result v22

    aput v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;[I)V

    .line 1070
    .local v3, "ampm":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    new-instance v4, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v7, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;[I)V

    .line 1071
    .restart local v4    # "firstDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mLegalTimesTree:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1073
    invoke-virtual {v4, v3}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1076
    new-instance v18, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;[I)V

    .line 1077
    .restart local v18    # "secondDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1079
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1082
    new-instance v19, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;[I)V

    .line 1083
    .restart local v19    # "thirdDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    invoke-virtual/range {v18 .. v19}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1085
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1089
    new-instance v5, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    const/16 v21, 0x6

    aput v12, v20, v21

    const/16 v21, 0x7

    aput v13, v20, v21

    const/16 v21, 0x8

    aput v14, v20, v21

    const/16 v21, 0x9

    aput v15, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;[I)V

    .line 1090
    .local v5, "fourthDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1092
    invoke-virtual {v5, v3}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1095
    new-instance v19, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    .end local v19    # "thirdDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v12, v20, v21

    const/16 v21, 0x1

    aput v13, v20, v21

    const/16 v21, 0x2

    aput v14, v20, v21

    const/16 v21, 0x3

    aput v15, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;[I)V

    .line 1096
    .restart local v19    # "thirdDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    invoke-virtual/range {v18 .. v19}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1098
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1101
    new-instance v18, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    .end local v18    # "secondDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v9, v20, v21

    const/16 v21, 0x1

    aput v10, v20, v21

    const/16 v21, 0x2

    aput v11, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;[I)V

    .line 1102
    .restart local v18    # "secondDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1105
    new-instance v19, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    .end local v19    # "thirdDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    const/16 v21, 0x6

    aput v12, v20, v21

    const/16 v21, 0x7

    aput v13, v20, v21

    const/16 v21, 0x8

    aput v14, v20, v21

    const/16 v21, 0x9

    aput v15, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;[I)V

    .line 1106
    .restart local v19    # "thirdDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    invoke-virtual/range {v18 .. v19}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1108
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1111
    new-instance v4, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    .end local v4    # "firstDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v8, v20, v21

    const/16 v21, 0x1

    aput v9, v20, v21

    const/16 v21, 0x2

    aput v10, v20, v21

    const/16 v21, 0x3

    aput v11, v20, v21

    const/16 v21, 0x4

    aput v12, v20, v21

    const/16 v21, 0x5

    aput v13, v20, v21

    const/16 v21, 0x6

    aput v14, v20, v21

    const/16 v21, 0x7

    aput v15, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;[I)V

    .line 1112
    .restart local v4    # "firstDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mLegalTimesTree:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1114
    invoke-virtual {v4, v3}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1117
    new-instance v18, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    .end local v18    # "secondDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;[I)V

    .line 1118
    .restart local v18    # "secondDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1121
    new-instance v19, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    .end local v19    # "thirdDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    const/16 v21, 0x6

    aput v12, v20, v21

    const/16 v21, 0x7

    aput v13, v20, v21

    const/16 v21, 0x8

    aput v14, v20, v21

    const/16 v21, 0x9

    aput v15, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;[I)V

    .line 1122
    .restart local v19    # "thirdDigit":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    invoke-virtual/range {v18 .. v19}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    .line 1124
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V

    goto/16 :goto_0
.end method

.method private getAmOrPmKeyCode(I)I
    .locals 11
    .param p1, "amOrPm"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, -0x1

    .line 967
    iget v6, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mAmKeyCode:I

    if-eq v6, v5, :cond_0

    iget v6, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mPmKeyCode:I

    if-ne v6, v5, :cond_1

    .line 969
    :cond_0
    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v3

    .line 972
    .local v3, "kcm":Landroid/view/KeyCharacterMap;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mAmText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mPmText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 973
    iget-object v6, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mAmText:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 974
    .local v0, "amChar":C
    iget-object v6, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mPmText:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 975
    .local v4, "pmChar":C
    if-eq v0, v4, :cond_4

    .line 976
    new-array v6, v10, [C

    aput-char v0, v6, v8

    aput-char v4, v6, v9

    invoke-virtual {v3, v6}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v1

    .line 978
    .local v1, "events":[Landroid/view/KeyEvent;
    if-eqz v1, :cond_3

    array-length v6, v1

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 979
    aget-object v6, v1, v8

    invoke-virtual {v6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    iput v6, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mAmKeyCode:I

    .line 980
    aget-object v6, v1, v10

    invoke-virtual {v6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    iput v6, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mPmKeyCode:I

    .line 988
    .end local v0    # "amChar":C
    .end local v1    # "events":[Landroid/view/KeyEvent;
    .end local v2    # "i":I
    .end local v3    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v4    # "pmChar":C
    :cond_1
    :goto_1
    if-nez p1, :cond_5

    .line 989
    iget v5, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mAmKeyCode:I

    .line 994
    :cond_2
    :goto_2
    return v5

    .line 982
    .restart local v0    # "amChar":C
    .restart local v1    # "events":[Landroid/view/KeyEvent;
    .restart local v2    # "i":I
    .restart local v3    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v4    # "pmChar":C
    :cond_3
    const-string v6, "TimePickerDialog"

    const-string v7, "Unable to find keycodes for AM and PM."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 972
    .end local v1    # "events":[Landroid/view/KeyEvent;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 990
    .end local v0    # "amChar":C
    .end local v2    # "i":I
    .end local v3    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v4    # "pmChar":C
    :cond_5
    if-ne p1, v9, :cond_2

    .line 991
    iget v5, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mPmKeyCode:I

    goto :goto_2
.end method

.method private getEnteredTime([Ljava/lang/Boolean;)[I
    .locals 11
    .param p1, "enteredZeros"    # [Ljava/lang/Boolean;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 927
    const/4 v0, -0x1

    .line 928
    .local v0, "amOrPm":I
    const/4 v5, 0x1

    .line 929
    .local v5, "startIndex":I
    iget-object v7, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mIs24HourMode:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-direct {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->isTypedTimeFullyLegal()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 930
    iget-object v7, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 931
    .local v3, "keyCode":I
    invoke-direct {p0, v10}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getAmOrPmKeyCode(I)I

    move-result v7

    if-ne v3, v7, :cond_3

    .line 932
    const/4 v0, 0x0

    .line 936
    :cond_0
    :goto_0
    const/4 v5, 0x2

    .line 938
    .end local v3    # "keyCode":I
    :cond_1
    const/4 v4, -0x1

    .line 939
    .local v4, "minute":I
    const/4 v1, -0x1

    .line 940
    .local v1, "hour":I
    move v2, v5

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v2, v7, :cond_7

    .line 941
    iget-object v7, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getValFromKeyCode(I)I

    move-result v6

    .line 942
    .local v6, "val":I
    if-ne v2, v5, :cond_4

    .line 943
    move v4, v6

    .line 940
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 933
    .end local v1    # "hour":I
    .end local v2    # "i":I
    .end local v4    # "minute":I
    .end local v6    # "val":I
    .restart local v3    # "keyCode":I
    :cond_3
    invoke-direct {p0, v9}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getAmOrPmKeyCode(I)I

    move-result v7

    if-ne v3, v7, :cond_0

    .line 934
    const/4 v0, 0x1

    goto :goto_0

    .line 944
    .end local v3    # "keyCode":I
    .restart local v1    # "hour":I
    .restart local v2    # "i":I
    .restart local v4    # "minute":I
    .restart local v6    # "val":I
    :cond_4
    add-int/lit8 v7, v5, 0x1

    if-ne v2, v7, :cond_5

    .line 945
    mul-int/lit8 v7, v6, 0xa

    add-int/2addr v4, v7

    .line 946
    if-eqz p1, :cond_2

    if-nez v6, :cond_2

    .line 947
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, p1, v9

    goto :goto_2

    .line 949
    :cond_5
    add-int/lit8 v7, v5, 0x2

    if-ne v2, v7, :cond_6

    .line 950
    move v1, v6

    goto :goto_2

    .line 951
    :cond_6
    add-int/lit8 v7, v5, 0x3

    if-ne v2, v7, :cond_2

    .line 952
    mul-int/lit8 v7, v6, 0xa

    add-int/2addr v1, v7

    .line 953
    if-eqz p1, :cond_2

    if-nez v6, :cond_2

    .line 954
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, p1, v10

    goto :goto_2

    .line 959
    .end local v6    # "val":I
    :cond_7
    const/4 v7, 0x3

    new-array v7, v7, [I

    aput v1, v7, v10

    aput v4, v7, v9

    const/4 v8, 0x2

    aput v0, v7, v8

    return-object v7
.end method

.method private getValFromKeyCode(I)I
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 891
    packed-switch p1, :pswitch_data_0

    .line 913
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 893
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 895
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 897
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 899
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 901
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 903
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 905
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 907
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 909
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 911
    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 891
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private hasTimeLimits()Z
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mFutureMinutesLimit:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mPastMinutesLimit:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTypedTimeFullyLegal()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 809
    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mIs24HourMode:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 812
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getEnteredTime([Ljava/lang/Boolean;)[I

    move-result-object v0

    .line 813
    .local v0, "values":[I
    aget v3, v0, v2

    if-ltz v3, :cond_0

    aget v3, v0, v1

    if-ltz v3, :cond_0

    aget v3, v0, v1

    const/16 v4, 0x3c

    if-ge v3, v4, :cond_0

    .line 817
    .end local v0    # "values":[I
    :goto_0
    return v1

    .restart local v0    # "values":[I
    :cond_0
    move v1, v2

    .line 813
    goto :goto_0

    .line 817
    .end local v0    # "values":[I
    :cond_1
    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTypedTimes:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getAmOrPmKeyCode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTypedTimes:Ljava/util/ArrayList;

    .line 818
    invoke-direct {p0, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getAmOrPmKeyCode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    move v1, v2

    .line 817
    goto :goto_0
.end method

.method private isTypedTimeLegalSoFar()Z
    .locals 4

    .prologue
    .line 795
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mLegalTimesTree:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    .line 796
    .local v1, "node":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    iget-object v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 797
    .local v0, "keyCode":I
    invoke-virtual {v1, v0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->canReach(I)Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    move-result-object v1

    .line 798
    if-nez v1, :cond_0

    .line 799
    const/4 v2, 0x0

    .line 802
    .end local v0    # "keyCode":I
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private processKeyUp(I)Z
    .locals 7
    .param p1, "keyCode"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 684
    const/16 v4, 0x6f

    if-eq p1, v4, :cond_0

    const/4 v4, 0x4

    if-ne p1, v4, :cond_2

    .line 685
    :cond_0
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->dismiss()V

    .line 743
    :cond_1
    :goto_0
    return v2

    .line 687
    :cond_2
    const/16 v4, 0x3d

    if-ne p1, v4, :cond_3

    .line 688
    iget-boolean v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mInKbMode:Z

    if-eqz v4, :cond_6

    .line 689
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->isTypedTimeFullyLegal()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 690
    invoke-direct {p0, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->finishKbMode(Z)V

    goto :goto_0

    .line 694
    :cond_3
    const/16 v4, 0x42

    if-ne p1, v4, :cond_5

    .line 695
    iget-boolean v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mInKbMode:Z

    if-eqz v4, :cond_4

    .line 696
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->isTypedTimeFullyLegal()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 699
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->finishKbMode(Z)V

    .line 701
    :cond_4
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->doneClickValidateAndCallback()V

    goto :goto_0

    .line 703
    :cond_5
    const/16 v4, 0x43

    if-ne p1, v4, :cond_9

    .line 704
    iget-boolean v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mInKbMode:Z

    if-eqz v4, :cond_6

    .line 705
    iget-object v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 706
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->deleteLastTypedKey()I

    move-result v0

    .line 708
    .local v0, "deleted":I
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne v0, v4, :cond_7

    .line 709
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mAmText:Ljava/lang/String;

    .line 715
    .local v1, "deletedKeyStr":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    iget-object v5, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mDeletedKeyFormat:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v3

    .line 716
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 715
    invoke-static {v4, v5}, Lcom/codetroopers/betterpickers/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 717
    invoke-direct {p0, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->updateDisplay(Z)V

    .end local v0    # "deleted":I
    .end local v1    # "deletedKeyStr":Ljava/lang/String;
    :cond_6
    move v2, v3

    .line 743
    goto :goto_0

    .line 710
    .restart local v0    # "deleted":I
    :cond_7
    invoke-direct {p0, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne v0, v4, :cond_8

    .line 711
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mPmText:Ljava/lang/String;

    .restart local v1    # "deletedKeyStr":Ljava/lang/String;
    goto :goto_1

    .line 713
    .end local v1    # "deletedKeyStr":Ljava/lang/String;
    :cond_8
    const-string v4, "%d"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getValFromKeyCode(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "deletedKeyStr":Ljava/lang/String;
    goto :goto_1

    .line 720
    .end local v0    # "deleted":I
    .end local v1    # "deletedKeyStr":Ljava/lang/String;
    :cond_9
    const/4 v4, 0x7

    if-eq p1, v4, :cond_a

    const/16 v4, 0x8

    if-eq p1, v4, :cond_a

    const/16 v4, 0x9

    if-eq p1, v4, :cond_a

    const/16 v4, 0xa

    if-eq p1, v4, :cond_a

    const/16 v4, 0xb

    if-eq p1, v4, :cond_a

    const/16 v4, 0xc

    if-eq p1, v4, :cond_a

    const/16 v4, 0xd

    if-eq p1, v4, :cond_a

    const/16 v4, 0xe

    if-eq p1, v4, :cond_a

    const/16 v4, 0xf

    if-eq p1, v4, :cond_a

    const/16 v4, 0x10

    if-eq p1, v4, :cond_a

    iget-object v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mIs24HourMode:Ljava/lang/Boolean;

    .line 725
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_6

    .line 726
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getAmOrPmKeyCode(I)I

    move-result v4

    if-eq p1, v4, :cond_a

    invoke-direct {p0, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne p1, v4, :cond_6

    .line 727
    :cond_a
    iget-boolean v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mInKbMode:Z

    if-nez v4, :cond_c

    .line 728
    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    if-nez v3, :cond_b

    .line 730
    const-string v3, "TimePickerDialog"

    const-string v4, "Unable to initiate keyboard mode, TimePicker was null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 733
    :cond_b
    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 734
    invoke-direct {p0, p1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->tryStartingKbMode(I)V

    goto/16 :goto_0

    .line 738
    :cond_c
    invoke-direct {p0, p1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->addKeyIfLegal(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 739
    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->updateDisplay(Z)V

    goto/16 :goto_0
.end method

.method private setCurrentItemShowing(IZZZ)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "animateCircle"    # Z
    .param p3, "delayLabelAnimate"    # Z
    .param p4, "announce"    # Z

    .prologue
    .line 643
    iget-object v6, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v6, p1, p2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->setCurrentItemShowing(IZ)V

    .line 646
    if-nez p1, :cond_3

    .line 647
    iget-object v6, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v6}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getHours()I

    move-result v1

    .line 648
    .local v1, "hours":I
    iget-object v6, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mIs24HourMode:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    .line 649
    rem-int/lit8 v1, v1, 0xc

    .line 651
    :cond_0
    iget-object v6, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mHourPickerDescription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 652
    if-eqz p4, :cond_1

    .line 653
    iget-object v6, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    iget-object v7, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mSelectHours:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/codetroopers/betterpickers/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 655
    :cond_1
    iget-object v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mHourView:Landroid/widget/TextView;

    .line 665
    .end local v1    # "hours":I
    .local v2, "labelToAnimate":Landroid/widget/TextView;
    :goto_0
    if-nez p1, :cond_5

    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mSelectedColor:I

    .line 666
    .local v0, "hourColor":I
    :goto_1
    const/4 v6, 0x1

    if-ne p1, v6, :cond_6

    iget v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mSelectedColor:I

    .line 667
    .local v3, "minuteColor":I
    :goto_2
    iget-object v6, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 668
    iget-object v6, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 670
    const v6, 0x3f59999a    # 0.85f

    const v7, 0x3f8ccccd    # 1.1f

    invoke-static {v2, v6, v7}, Lcom/codetroopers/betterpickers/Utils;->getPulseAnimator(Landroid/view/View;FF)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v5

    .line 671
    .local v5, "pulseAnimator":Lcom/nineoldandroids/animation/ObjectAnimator;
    if-eqz p3, :cond_2

    .line 672
    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Lcom/nineoldandroids/animation/ObjectAnimator;->setStartDelay(J)V

    .line 674
    :cond_2
    invoke-virtual {v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 675
    return-void

    .line 657
    .end local v0    # "hourColor":I
    .end local v2    # "labelToAnimate":Landroid/widget/TextView;
    .end local v3    # "minuteColor":I
    .end local v5    # "pulseAnimator":Lcom/nineoldandroids/animation/ObjectAnimator;
    :cond_3
    iget-object v6, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v6}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getMinutes()I

    move-result v4

    .line 658
    .local v4, "minutes":I
    iget-object v6, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mMinutePickerDescription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 659
    if-eqz p4, :cond_4

    .line 660
    iget-object v6, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    iget-object v7, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mSelectMinutes:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/codetroopers/betterpickers/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 662
    :cond_4
    iget-object v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mMinuteView:Landroid/widget/TextView;

    .restart local v2    # "labelToAnimate":Landroid/widget/TextView;
    goto :goto_0

    .line 665
    .end local v4    # "minutes":I
    :cond_5
    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mUnselectedColor:I

    goto :goto_1

    .line 666
    .restart local v0    # "hourColor":I
    :cond_6
    iget v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mUnselectedColor:I

    goto :goto_2
.end method

.method private setHour(IZ)V
    .locals 5
    .param p1, "value"    # I
    .param p2, "announce"    # Z

    .prologue
    .line 612
    iget-object v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mIs24HourMode:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 613
    const-string v0, "%02d"

    .line 622
    .local v0, "format":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 623
    .local v1, "text":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mHourSpaceView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    if-eqz p2, :cond_1

    .line 626
    iget-object v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-static {v2, v1}, Lcom/codetroopers/betterpickers/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 628
    :cond_1
    return-void

    .line 615
    .end local v0    # "format":Ljava/lang/String;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_2
    const-string v0, "%d"

    .line 616
    .restart local v0    # "format":Ljava/lang/String;
    rem-int/lit8 p1, p1, 0xc

    .line 617
    if-nez p1, :cond_0

    .line 618
    const/16 p1, 0xc

    goto :goto_0
.end method

.method private setMinute(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    .line 631
    const/16 v1, 0x3c

    if-ne p1, v1, :cond_0

    .line 632
    const/4 p1, 0x0

    .line 634
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/codetroopers/betterpickers/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 636
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mMinuteSpaceView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    return-void
.end method

.method private tryStartingKbMode(I)V
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    const/4 v1, 0x0

    .line 754
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->trySettingInputEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 755
    invoke-direct {p0, p1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->addKeyIfLegal(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 756
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mInKbMode:Z

    .line 757
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 758
    invoke-direct {p0, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->updateDisplay(Z)V

    .line 760
    :cond_1
    return-void
.end method

.method private updateAmPmDisplay(I)V
    .locals 2
    .param p1, "amOrPm"    # I

    .prologue
    .line 485
    if-nez p1, :cond_0

    .line 486
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mAmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mAmText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/codetroopers/betterpickers/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 488
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mAmPmHitspace:Landroid/view/View;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mAmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 496
    :goto_0
    return-void

    .line 489
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mPmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mPmText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/codetroopers/betterpickers/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 492
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mAmPmHitspace:Landroid/view/View;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mPmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mDoublePlaceholderText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDisplay(Z)V
    .locals 12
    .param p1, "allowEmptyDisplay"    # Z

    .prologue
    .line 859
    if-nez p1, :cond_3

    iget-object v8, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 860
    iget-object v8, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v8}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getHours()I

    move-result v1

    .line 861
    .local v1, "hour":I
    iget-object v8, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v8}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getMinutes()I

    move-result v4

    .line 862
    .local v4, "minute":I
    const/4 v8, 0x1

    invoke-direct {p0, v1, v8}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->setHour(IZ)V

    .line 863
    invoke-direct {p0, v4}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->setMinute(I)V

    .line 864
    iget-object v8, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mIs24HourMode:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_0

    .line 865
    const/16 v8, 0xc

    if-ge v1, v8, :cond_2

    const/4 v8, 0x0

    :goto_0
    invoke-direct {p0, v8}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->updateAmPmDisplay(I)V

    .line 867
    :cond_0
    iget-object v8, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v8}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->setCurrentItemShowing(IZZZ)V

    .line 868
    iget-object v8, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mDoneButton:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 888
    .end local v1    # "hour":I
    .end local v4    # "minute":I
    :cond_1
    :goto_1
    return-void

    .line 865
    .restart local v1    # "hour":I
    .restart local v4    # "minute":I
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 870
    .end local v1    # "hour":I
    .end local v4    # "minute":I
    :cond_3
    const/4 v8, 0x2

    new-array v0, v8, [Ljava/lang/Boolean;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v0, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v0, v8

    .line 871
    .local v0, "enteredZeros":[Ljava/lang/Boolean;
    invoke-direct {p0, v0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getEnteredTime([Ljava/lang/Boolean;)[I

    move-result-object v7

    .line 872
    .local v7, "values":[I
    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v2, "%02d"

    .line 873
    .local v2, "hourFormat":Ljava/lang/String;
    :goto_2
    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v5, "%02d"

    .line 874
    .local v5, "minuteFormat":Ljava/lang/String;
    :goto_3
    const/4 v8, 0x0

    aget v8, v7, v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mDoublePlaceholderText:Ljava/lang/String;

    .line 876
    .local v3, "hourStr":Ljava/lang/String;
    :goto_4
    const/4 v8, 0x1

    aget v8, v7, v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_7

    iget-object v6, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mDoublePlaceholderText:Ljava/lang/String;

    .line 878
    .local v6, "minuteStr":Ljava/lang/String;
    :goto_5
    iget-object v8, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    iget-object v8, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mHourSpaceView:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 880
    iget-object v8, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mHourView:Landroid/widget/TextView;

    iget v9, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mUnselectedColor:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 881
    iget-object v8, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 882
    iget-object v8, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mMinuteSpaceView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 883
    iget-object v8, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mMinuteView:Landroid/widget/TextView;

    iget v9, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mUnselectedColor:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 884
    iget-object v8, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mIs24HourMode:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_1

    .line 885
    const/4 v8, 0x2

    aget v8, v7, v8

    invoke-direct {p0, v8}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->updateAmPmDisplay(I)V

    goto :goto_1

    .line 872
    .end local v2    # "hourFormat":Ljava/lang/String;
    .end local v3    # "hourStr":Ljava/lang/String;
    .end local v5    # "minuteFormat":Ljava/lang/String;
    .end local v6    # "minuteStr":Ljava/lang/String;
    :cond_4
    const-string v2, "%2d"

    goto :goto_2

    .line 873
    .restart local v2    # "hourFormat":Ljava/lang/String;
    :cond_5
    const-string v5, "%2d"

    goto :goto_3

    .line 874
    .restart local v5    # "minuteFormat":Ljava/lang/String;
    :cond_6
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v7, v10

    .line 875
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    iget-char v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mPlaceholderText:C

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 876
    .restart local v3    # "hourStr":Ljava/lang/String;
    :cond_7
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    aget v10, v7, v10

    .line 877
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    iget-char v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mPlaceholderText:C

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    goto :goto_5
.end method


# virtual methods
.method public doneClickValidateAndCallback()V
    .locals 3

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->isSelectionTooFarInTheFuture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mError:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mError:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    sget v1, Lcom/codetroopers/betterpickers/R$string;->max_time_error:I

    invoke-virtual {p0, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mError:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->show()V

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->isSelectionTooFarInPast()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 567
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mError:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mError:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    sget v1, Lcom/codetroopers/betterpickers/R$string;->min_time_error:I

    invoke-virtual {p0, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mError:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->show()V

    goto :goto_0

    .line 572
    :cond_2
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mCallback:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$OnTimeSetListener;

    if-eqz v0, :cond_3

    .line 573
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mCallback:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$OnTimeSetListener;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getHours()I

    move-result v1

    iget-object v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getMinutes()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$OnTimeSetListener;->onTimeSet(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;II)V

    .line 575
    :cond_3
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->dismiss()V

    goto :goto_0
.end method

.method public isSelectionTooFarInPast()Z
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/4 v2, 0x0

    .line 543
    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mPickerDate:Ljava/util/Calendar;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mValidateDateTime:Ljava/util/Calendar;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mPastMinutesLimit:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 544
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 545
    .local v1, "selectedDate":Ljava/util/Calendar;
    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mPickerDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 546
    const/16 v3, 0xb

    iget-object v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getHours()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 547
    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v3}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getMinutes()I

    move-result v3

    invoke-virtual {v1, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 549
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 550
    .local v0, "pastLimit":Ljava/util/Calendar;
    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mValidateDateTime:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 551
    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mPastMinutesLimit:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->add(II)V

    .line 552
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v3

    if-gez v3, :cond_0

    const/4 v2, 0x1

    .line 554
    .end local v0    # "pastLimit":Ljava/util/Calendar;
    .end local v1    # "selectedDate":Ljava/util/Calendar;
    :cond_0
    return v2
.end method

.method public isSelectionTooFarInTheFuture()Z
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/4 v2, 0x0

    .line 523
    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mPickerDate:Ljava/util/Calendar;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mValidateDateTime:Ljava/util/Calendar;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mFutureMinutesLimit:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 524
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 525
    .local v1, "selectedDate":Ljava/util/Calendar;
    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mPickerDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 526
    const/16 v3, 0xb

    iget-object v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getHours()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 527
    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v3}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getMinutes()I

    move-result v3

    invoke-virtual {v1, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 529
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 530
    .local v0, "futureLimit":Ljava/util/Calendar;
    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mValidateDateTime:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 531
    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mFutureMinutesLimit:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->add(II)V

    .line 532
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    .line 534
    .end local v0    # "futureLimit":Ljava/util/Calendar;
    .end local v1    # "selectedDate":Ljava/util/Calendar;
    :cond_0
    return v2
.end method

.method public isThemeDark()Z
    .locals 2

    .prologue
    .line 177
    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mStyleResId:I

    sget v1, Lcom/codetroopers/betterpickers/R$style;->BetterPickersRadialTimePickerDialog_Dark:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 262
    if-eqz p1, :cond_4

    const-string v0, "hour_of_day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "minute"

    .line 263
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "is_24_hour_view"

    .line 264
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 265
    const-string v0, "hour_of_day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mInitialHourOfDay:I

    .line 266
    const-string v0, "minute"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mInitialMinute:I

    .line 267
    const-string v0, "is_24_hour_view"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mIs24HourMode:Ljava/lang/Boolean;

    .line 268
    const-string v0, "in_kb_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mInKbMode:Z

    .line 269
    const-string v0, "theme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mStyleResId:I

    .line 270
    const-string v0, "future_minutes_limit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    const-string v0, "future_minutes_limit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mFutureMinutesLimit:Ljava/lang/Integer;

    .line 273
    :cond_0
    const-string v0, "past_minutes_limit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    const-string v0, "past_minutes_limit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mPastMinutesLimit:Ljava/lang/Integer;

    .line 276
    :cond_1
    const-string v0, "current_date"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    const-string v0, "current_date"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mValidateDateTime:Ljava/util/Calendar;

    .line 279
    :cond_2
    const-string v0, "picker_date"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 280
    const-string v0, "picker_date"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mPickerDate:Ljava/util/Calendar;

    .line 287
    :cond_3
    :goto_0
    return-void

    .line 283
    :cond_4
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mIs24HourMode:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 284
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mIs24HourMode:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 21
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getShowsDialog()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 295
    :cond_0
    sget v2, Lcom/codetroopers/betterpickers/R$layout;->radial_time_picker_dialog:I

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    .line 296
    .local v20, "view":Landroid/view/View;
    new-instance v15, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$KeyboardListener;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$KeyboardListener;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$1;)V

    .line 297
    .local v15, "keyboardListener":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$KeyboardListener;
    sget v2, Lcom/codetroopers/betterpickers/R$id;->time_picker_dialog:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 300
    .local v17, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mStyleResId:I

    sget-object v4, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogs:[I

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 303
    .local v19, "themeColors":Landroid/content/res/TypedArray;
    sget v2, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogs_bpHeaderBackgroundColor:I

    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/codetroopers/betterpickers/R$color;->bpBlue:I

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    .line 304
    .local v14, "headerBgColor":I
    sget v2, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogs_bpBodyBackgroundColor:I

    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/codetroopers/betterpickers/R$color;->bpWhite:I

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    .line 305
    .local v9, "bodyBgColor":I
    sget v2, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogs_bpButtonsBackgroundColor:I

    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/codetroopers/betterpickers/R$color;->bpWhite:I

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 306
    .local v10, "buttonBgColor":I
    sget v2, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogs_bpButtonsTextColor:I

    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/codetroopers/betterpickers/R$color;->bpBlue:I

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    .line 307
    .local v11, "buttonTextColor":I
    sget v2, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogs_bpHeaderSelectedTextColor:I

    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/codetroopers/betterpickers/R$color;->bpWhite:I

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mSelectedColor:I

    .line 308
    sget v2, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogs_bpHeaderUnselectedTextColor:I

    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/codetroopers/betterpickers/R$color;->radial_gray_light:I

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mUnselectedColor:I

    .line 310
    sget v2, Lcom/codetroopers/betterpickers/R$string;->hour_picker_description:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mHourPickerDescription:Ljava/lang/String;

    .line 311
    sget v2, Lcom/codetroopers/betterpickers/R$string;->select_hours:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mSelectHours:Ljava/lang/String;

    .line 312
    sget v2, Lcom/codetroopers/betterpickers/R$string;->minute_picker_description:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mMinutePickerDescription:Ljava/lang/String;

    .line 313
    sget v2, Lcom/codetroopers/betterpickers/R$string;->select_minutes:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mSelectMinutes:Ljava/lang/String;

    .line 315
    sget v2, Lcom/codetroopers/betterpickers/R$id;->hours:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mHourView:Landroid/widget/TextView;

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 317
    sget v2, Lcom/codetroopers/betterpickers/R$id;->hour_space:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mHourSpaceView:Landroid/widget/TextView;

    .line 318
    sget v2, Lcom/codetroopers/betterpickers/R$id;->minutes_space:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mMinuteSpaceView:Landroid/widget/TextView;

    .line 319
    sget v2, Lcom/codetroopers/betterpickers/R$id;->minutes:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mMinuteView:Landroid/widget/TextView;

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 321
    sget v2, Lcom/codetroopers/betterpickers/R$id;->ampm_label:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mAmPmTextView:Landroid/widget/TextView;

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mAmPmTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 323
    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v8

    .line 324
    .local v8, "amPmTexts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v8, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mAmText:Ljava/lang/String;

    .line 325
    const/4 v2, 0x1

    aget-object v2, v8, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mPmText:Ljava/lang/String;

    .line 327
    new-instance v2, Lcom/codetroopers/betterpickers/HapticFeedbackController;

    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/codetroopers/betterpickers/HapticFeedbackController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mHapticFeedbackController:Lcom/codetroopers/betterpickers/HapticFeedbackController;

    .line 329
    sget v2, Lcom/codetroopers/betterpickers/R$id;->time_picker:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->setOnValueSelectedListener(Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout$OnValueSelectedListener;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v2, v15}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mHapticFeedbackController:Lcom/codetroopers/betterpickers/HapticFeedbackController;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mInitialHourOfDay:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mInitialMinute:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mIs24HourMode:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->initialize(Landroid/content/Context;Lcom/codetroopers/betterpickers/HapticFeedbackController;IIZ)V

    .line 334
    const/4 v13, 0x0

    .line 335
    .local v13, "currentItemShowing":I
    if-eqz p3, :cond_1

    const-string v2, "current_item_showing"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 336
    const-string v2, "current_item_showing"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 338
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2, v3, v4}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->setCurrentItemShowing(IZZZ)V

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->invalidate()V

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mHourView:Landroid/widget/TextView;

    new-instance v3, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$1;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mMinuteView:Landroid/widget/TextView;

    new-instance v3, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$2;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    sget v2, Lcom/codetroopers/betterpickers/R$id;->time_picker_header:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTitleTextView:Landroid/widget/TextView;

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTitleText:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTitleTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTitleText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    :goto_0
    sget v2, Lcom/codetroopers/betterpickers/R$id;->error:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mError:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    .line 366
    invoke-direct/range {p0 .. p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->hasTimeLimits()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mError:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->setVisibility(I)V

    .line 372
    :goto_1
    sget v2, Lcom/codetroopers/betterpickers/R$id;->done_button:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mDoneButton:Landroid/widget/Button;

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mDoneText:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mDoneButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mDoneText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 376
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mDoneButton:Landroid/widget/Button;

    new-instance v3, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$3;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 390
    sget v2, Lcom/codetroopers/betterpickers/R$id;->cancel_button:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 391
    .local v12, "cancelButton":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mCancelText:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mCancelText:Ljava/lang/String;

    invoke-virtual {v12, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 394
    :cond_3
    invoke-virtual {v12, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 395
    new-instance v2, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$4;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;)V

    invoke-virtual {v12, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    sget v2, Lcom/codetroopers/betterpickers/R$id;->ampm_hitspace:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mAmPmHitspace:Landroid/view/View;

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mIs24HourMode:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mAmPmTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 408
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 409
    .local v16, "paramsSeparator":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 410
    sget v2, Lcom/codetroopers/betterpickers/R$id;->separator:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 411
    .local v18, "separatorView":Landroid/widget/TextView;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    .end local v16    # "paramsSeparator":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v18    # "separatorView":Landroid/widget/TextView;
    :goto_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mAllowAutoAdvance:Z

    .line 432
    move-object/from16 v0, p0

    iget v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mInitialHourOfDay:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->setHour(IZ)V

    .line 433
    move-object/from16 v0, p0

    iget v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mInitialMinute:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->setMinute(I)V

    .line 436
    sget v2, Lcom/codetroopers/betterpickers/R$string;->time_placeholder:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mDoublePlaceholderText:Ljava/lang/String;

    .line 437
    sget v2, Lcom/codetroopers/betterpickers/R$string;->deleted_key:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mDeletedKeyFormat:Ljava/lang/String;

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mDoublePlaceholderText:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mPlaceholderText:C

    .line 439
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mPmKeyCode:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mAmKeyCode:I

    .line 440
    invoke-direct/range {p0 .. p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->generateLegalTimesTree()V

    .line 441
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mInKbMode:Z

    if-eqz v2, :cond_9

    .line 442
    const-string v2, "typed_times"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTypedTimes:Ljava/util/ArrayList;

    .line 443
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->tryStartingKbMode(I)V

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    .line 450
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->setTheme(Landroid/content/res/TypedArray;)V

    .line 454
    sget v2, Lcom/codetroopers/betterpickers/R$id;->time_display_background:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 455
    sget v2, Lcom/codetroopers/betterpickers/R$id;->ok_cancel_buttons_layout:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 456
    sget v2, Lcom/codetroopers/betterpickers/R$id;->time_display:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 457
    sget v2, Lcom/codetroopers/betterpickers/R$id;->time_picker_error_holder:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 458
    sget v2, Lcom/codetroopers/betterpickers/R$id;->separator:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mUnselectedColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 459
    sget v2, Lcom/codetroopers/betterpickers/R$id;->ampm_label:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mUnselectedColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v2, v9}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->setBackgroundColor(I)V

    .line 461
    return-object v20

    .line 361
    .end local v12    # "cancelButton":Landroid/widget/Button;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTitleTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 369
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mError:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 413
    .restart local v12    # "cancelButton":Landroid/widget/Button;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mAmPmTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 414
    move-object/from16 v0, p0

    iget v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mInitialHourOfDay:I

    const/16 v3, 0xc

    if-ge v2, v3, :cond_8

    const/4 v2, 0x0

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->updateAmPmDisplay(I)V

    .line 415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mAmPmHitspace:Landroid/view/View;

    new-instance v3, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$5;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 414
    :cond_8
    const/4 v2, 0x1

    goto :goto_4

    .line 445
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTypedTimes:Ljava/util/ArrayList;

    if-nez v2, :cond_4

    .line 446
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTypedTimes:Ljava/util/ArrayList;

    goto/16 :goto_3
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 253
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 254
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    invoke-interface {v0, p1}, Lcom/codetroopers/betterpickers/OnDialogDismissListener;->onDialogDismiss(Landroid/content/DialogInterface;)V

    .line 257
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 476
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onPause()V

    .line 477
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mHapticFeedbackController:Lcom/codetroopers/betterpickers/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/HapticFeedbackController;->stop()V

    .line 478
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 470
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 471
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mHapticFeedbackController:Lcom/codetroopers/betterpickers/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/HapticFeedbackController;->start()V

    .line 472
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    if-eqz v0, :cond_3

    .line 501
    const-string v0, "hour_of_day"

    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getHours()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 502
    const-string v0, "minute"

    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getMinutes()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 503
    const-string v0, "is_24_hour_view"

    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mIs24HourMode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 504
    const-string v0, "current_item_showing"

    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 505
    const-string v0, "in_kb_mode"

    iget-boolean v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mInKbMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 506
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mFutureMinutesLimit:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 507
    const-string v0, "future_minutes_limit"

    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mFutureMinutesLimit:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mPastMinutesLimit:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 509
    const-string v0, "past_minutes_limit"

    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mPastMinutesLimit:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 510
    :cond_1
    const-string v0, "current_date"

    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mValidateDateTime:Ljava/util/Calendar;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 511
    const-string v0, "picker_date"

    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mPickerDate:Ljava/util/Calendar;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 512
    iget-boolean v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mInKbMode:Z

    if-eqz v0, :cond_2

    const-string v0, "typed_times"

    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 513
    :cond_2
    const-string v0, "theme"

    iget v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mStyleResId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 515
    :cond_3
    return-void
.end method

.method public onValueSelected(IIZ)V
    .locals 6
    .param p1, "pickerIndex"    # I
    .param p2, "newValue"    # I
    .param p3, "autoAdvance"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 584
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->hasTimeLimits()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mError:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->hideImmediately()V

    .line 587
    :cond_0
    if-nez p1, :cond_3

    .line 588
    invoke-direct {p0, p2, v5}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->setHour(IZ)V

    .line 589
    const-string v1, "%d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 590
    .local v0, "announcement":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mAllowAutoAdvance:Z

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    .line 591
    invoke-direct {p0, v4, v4, v4, v5}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->setCurrentItemShowing(IZZZ)V

    .line 592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mSelectMinutes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 596
    :goto_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/codetroopers/betterpickers/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 608
    .end local v0    # "announcement":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 594
    .restart local v0    # "announcement":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mHourPickerDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 597
    .end local v0    # "announcement":Ljava/lang/String;
    :cond_3
    if-ne p1, v4, :cond_4

    .line 598
    invoke-direct {p0, p2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->setMinute(I)V

    .line 599
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTimePicker:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mMinutePickerDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 600
    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    .line 601
    invoke-direct {p0, p2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->updateAmPmDisplay(I)V

    goto :goto_1

    .line 602
    :cond_5
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 603
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->isTypedTimeFullyLegal()Z

    move-result v1

    if-nez v1, :cond_6

    .line 604
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 606
    :cond_6
    invoke-direct {p0, v4}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->finishKbMode(Z)V

    goto :goto_1
.end method

.method public setAutodetectDateFormat(Landroid/content/Context;)Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 247
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mIs24HourMode:Ljava/lang/Boolean;

    .line 248
    return-object p0
.end method

.method public setCancelText(Ljava/lang/String;)Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mCancelText:Ljava/lang/String;

    .line 229
    return-object p0
.end method

.method public setDoneText(Ljava/lang/String;)Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mDoneText:Ljava/lang/String;

    .line 204
    return-object p0
.end method

.method public setForced12hFormat()Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mIs24HourMode:Ljava/lang/Boolean;

    .line 239
    return-object p0
.end method

.method public setForced24hFormat()Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mIs24HourMode:Ljava/lang/Boolean;

    .line 234
    return-object p0
.end method

.method public setFutureMinutesLimit(Ljava/lang/Integer;)Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;
    .locals 0
    .param p1, "futureMinutesLimit"    # Ljava/lang/Integer;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mFutureMinutesLimit:Ljava/lang/Integer;

    .line 209
    return-object p0
.end method

.method public setOnDismissListener(Lcom/codetroopers/betterpickers/OnDialogDismissListener;)Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;
    .locals 0
    .param p1, "ondialogdismisslistener"    # Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    .line 182
    return-object p0
.end method

.method public setOnTimeSetListener(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$OnTimeSetListener;)Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;
    .locals 0
    .param p1, "callback"    # Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$OnTimeSetListener;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mCallback:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$OnTimeSetListener;

    .line 187
    return-object p0
.end method

.method public setPastMinutesLimit(Ljava/lang/Integer;)Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;
    .locals 0
    .param p1, "pastMinutesLimit"    # Ljava/lang/Integer;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mPastMinutesLimit:Ljava/lang/Integer;

    .line 214
    return-object p0
.end method

.method public setPickerDate(Ljava/util/Calendar;)Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;
    .locals 0
    .param p1, "pickerDate"    # Ljava/util/Calendar;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mPickerDate:Ljava/util/Calendar;

    .line 224
    return-object p0
.end method

.method public setStartTime(II)Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;
    .locals 1
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    .line 191
    iput p1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mInitialHourOfDay:I

    .line 192
    iput p2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mInitialMinute:I

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mInKbMode:Z

    .line 194
    return-object p0
.end method

.method public setThemeCustom(I)Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;
    .locals 0
    .param p1, "styleResId"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mStyleResId:I

    .line 173
    return-object p0
.end method

.method public setThemeDark()Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;
    .locals 1

    .prologue
    .line 157
    sget v0, Lcom/codetroopers/betterpickers/R$style;->BetterPickersRadialTimePickerDialog_Dark:I

    iput v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mStyleResId:I

    .line 158
    return-object p0
.end method

.method public setThemeLight()Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;
    .locals 1

    .prologue
    .line 163
    sget v0, Lcom/codetroopers/betterpickers/R$style;->BetterPickersRadialTimePickerDialog_Light:I

    iput v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mStyleResId:I

    .line 164
    return-object p0
.end method

.method public setTitleText(Ljava/lang/String;)Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mTitleText:Ljava/lang/String;

    .line 199
    return-object p0
.end method

.method public setValidateDateTime(Ljava/util/Calendar;)Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;
    .locals 0
    .param p1, "validateDateTime"    # Ljava/util/Calendar;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mValidateDateTime:Ljava/util/Calendar;

    .line 219
    return-object p0
.end method

.method public tryVibrate()V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->mHapticFeedbackController:Lcom/codetroopers/betterpickers/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/HapticFeedbackController;->tryVibrate()V

    .line 482
    return-void
.end method

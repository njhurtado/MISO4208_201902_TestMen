.class public Lcom/codetroopers/betterpickers/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final FULL_ALPHA:I = 0xff

.field public static final MONDAY_BEFORE_JULIAN_EPOCH:I = 0x253d89

.field public static final PULSE_ANIMATOR_DURATION:I = 0x220

.field static final SHARED_PREFS_NAME:Ljava/lang/String; = "com.android.calendar_preferences"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDisabledDayForKey(III)I
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    .line 150
    mul-int/lit16 v0, p0, 0x2710

    mul-int/lit8 v1, p1, 0x64

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    return v0
.end method

.method public static getDaysInMonth(II)I
    .locals 2
    .param p0, "month"    # I
    .param p1, "year"    # I

    .prologue
    .line 61
    packed-switch p0, :pswitch_data_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :pswitch_0
    const/16 v0, 0x1f

    .line 76
    :goto_0
    return v0

    .line 74
    :pswitch_1
    const/16 v0, 0x1e

    goto :goto_0

    .line 76
    :pswitch_2
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_1

    :cond_0
    rem-int/lit16 v0, p1, 0x190

    if-nez v0, :cond_2

    :cond_1
    const/16 v0, 0x1d

    goto :goto_0

    :cond_2
    const/16 v0, 0x1c

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getJulianMondayFromWeeksSinceEpoch(I)I
    .locals 2
    .param p0, "week"    # I

    .prologue
    .line 94
    const v0, 0x253d89

    mul-int/lit8 v1, p0, 0x7

    add-int/2addr v0, v1

    return v0
.end method

.method public static getPulseAnimator(Landroid/view/View;FF)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 13
    .param p0, "labelToAnimate"    # Landroid/view/View;
    .param p1, "decreaseRatio"    # F
    .param p2, "increaseRatio"    # F

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 126
    const/4 v7, 0x0

    invoke-static {v7, v8}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v0

    .line 127
    .local v0, "k0":Lcom/nineoldandroids/animation/Keyframe;
    const v7, 0x3e8ccccd    # 0.275f

    invoke-static {v7, p1}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v1

    .line 128
    .local v1, "k1":Lcom/nineoldandroids/animation/Keyframe;
    const v7, 0x3f30a3d7    # 0.69f

    invoke-static {v7, p2}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v2

    .line 129
    .local v2, "k2":Lcom/nineoldandroids/animation/Keyframe;
    invoke-static {v8, v8}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v3

    .line 131
    .local v3, "k3":Lcom/nineoldandroids/animation/Keyframe;
    const-string v7, "scaleX"

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/nineoldandroids/animation/Keyframe;

    aput-object v0, v8, v9

    aput-object v1, v8, v10

    aput-object v2, v8, v11

    aput-object v3, v8, v12

    invoke-static {v7, v8}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Lcom/nineoldandroids/animation/Keyframe;)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v5

    .line 132
    .local v5, "scaleX":Lcom/nineoldandroids/animation/PropertyValuesHolder;
    const-string v7, "scaleY"

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/nineoldandroids/animation/Keyframe;

    aput-object v0, v8, v9

    aput-object v1, v8, v10

    aput-object v2, v8, v11

    aput-object v3, v8, v12

    invoke-static {v7, v8}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Lcom/nineoldandroids/animation/Keyframe;)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v6

    .line 133
    .local v6, "scaleY":Lcom/nineoldandroids/animation/PropertyValuesHolder;
    sget-boolean v7, Lcom/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v7, :cond_0

    .line 135
    invoke-static {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p0

    .end local p0    # "labelToAnimate":Landroid/view/View;
    :cond_0
    new-array v7, v11, [Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aput-object v5, v7, v9

    aput-object v6, v7, v10

    .line 134
    invoke-static {p0, v7}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Lcom/nineoldandroids/animation/PropertyValuesHolder;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v4

    .line 137
    .local v4, "pulseAnimator":Lcom/nineoldandroids/animation/ObjectAnimator;
    const-wide/16 v8, 0x220

    invoke-virtual {v4, v8, v9}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 139
    return-object v4
.end method

.method public static getWeeksSinceEpochFromJulianDay(II)I
    .locals 3
    .param p0, "julianDay"    # I
    .param p1, "firstDayOfWeek"    # I

    .prologue
    .line 111
    rsub-int/lit8 v0, p1, 0x4

    .line 112
    .local v0, "diff":I
    if-gez v0, :cond_0

    .line 113
    add-int/lit8 v0, v0, 0x7

    .line 115
    :cond_0
    const v2, 0x253d8c    # 3.419992E-39f

    sub-int v1, v2, v0

    .line 116
    .local v1, "refDay":I
    sub-int v2, p0, v1

    div-int/lit8 v2, v2, 0x7

    return v2
.end method

.method public static isJellybeanOrLater()Z
    .locals 2

    .prologue
    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {}, Lcom/codetroopers/betterpickers/Utils;->isJellybeanOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 58
    :cond_0
    return-void
.end method

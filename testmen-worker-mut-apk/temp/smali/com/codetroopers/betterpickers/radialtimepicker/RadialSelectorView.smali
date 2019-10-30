.class public Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;
.super Landroid/view/View;
.source "RadialSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView$InvalidateUpdateListener;
    }
.end annotation


# static fields
.field private static final FULL_ALPHA:I = 0xff

.field private static final TAG:Ljava/lang/String; = "RadialSelectorView"


# instance fields
.field private mAmPmCircleRadiusMultiplier:F

.field private mAnimationRadiusMultiplier:F

.field private mCircleRadius:I

.field private mCircleRadiusMultiplier:F

.field private mDrawValuesReady:Z

.field private mForceDrawDot:Z

.field private mHasInnerCircle:Z

.field private mInnerNumbersRadiusMultiplier:F

.field private mInvalidateUpdateListener:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView$InvalidateUpdateListener;

.field private mIs24HourMode:Z

.field private mIsInitialized:Z

.field private mLineLength:I

.field private mNumbersRadiusMultiplier:F

.field private mOuterNumbersRadiusMultiplier:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mSelectionAlpha:I

.field private mSelectionDegrees:I

.field private mSelectionRadians:D

.field private mSelectionRadius:I

.field private mSelectionRadiusMultiplier:F

.field private mTransitionEndRadiusMultiplier:F

.field private mTransitionMidRadiusMultiplier:F

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mIsInitialized:Z

    .line 79
    return-void
.end method


# virtual methods
.method public getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I
    .locals 24
    .param p1, "pointX"    # F
    .param p2, "pointY"    # F
    .param p3, "forceLegal"    # Z
    .param p4, "isInnerCircle"    # [Ljava/lang/Boolean;

    .prologue
    .line 180
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mDrawValuesReady:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 181
    const/4 v2, -0x1

    .line 246
    :cond_0
    :goto_0
    return v2

    .line 184
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mYCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, p2, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mYCenter:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, p2, v20

    mul-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mXCenter:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, p1, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mXCenter:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, p1, v21

    mul-float v20, v20, v21

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 186
    .local v8, "hypotenuse":D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mHasInnerCircle:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 187
    if-eqz p3, :cond_4

    .line 190
    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mCircleRadius:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mInnerNumbersRadiusMultiplier:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v7, v0

    .line 191
    .local v7, "innerNumberRadius":I
    int-to-double v0, v7

    move-wide/from16 v20, v0

    sub-double v20, v8, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v3, v0

    .line 192
    .local v3, "distanceToInnerNumber":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mCircleRadius:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mOuterNumbersRadiusMultiplier:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v14, v0

    .line 193
    .local v14, "outerNumberRadius":I
    int-to-double v0, v14

    move-wide/from16 v20, v0

    sub-double v20, v8, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v5, v0

    .line 195
    .local v5, "distanceToOuterNumber":I
    const/16 v20, 0x0

    if-gt v3, v5, :cond_3

    const/16 v19, 0x1

    :goto_1
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    aput-object v19, p4, v20

    .line 230
    .end local v3    # "distanceToInnerNumber":I
    .end local v5    # "distanceToOuterNumber":I
    .end local v7    # "innerNumberRadius":I
    .end local v14    # "outerNumberRadius":I
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mYCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, p2, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 231
    .local v13, "opposite":F
    float-to-double v0, v13

    move-wide/from16 v20, v0

    div-double v20, v20, v8

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->asin(D)D

    move-result-wide v16

    .line 232
    .local v16, "radians":D
    const-wide v20, 0x4066800000000000L    # 180.0

    mul-double v20, v20, v16

    const-wide v22, 0x400921fb54442d18L    # Math.PI

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v2, v0

    .line 235
    .local v2, "degrees":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mXCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v19, p1, v19

    if-lez v19, :cond_8

    const/4 v15, 0x1

    .line 236
    .local v15, "rightSide":Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mYCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpg-float v19, p2, v19

    if-gez v19, :cond_9

    const/16 v18, 0x1

    .line 237
    .local v18, "topSide":Z
    :goto_4
    if-eqz v15, :cond_a

    if-eqz v18, :cond_a

    .line 238
    rsub-int/lit8 v2, v2, 0x5a

    goto/16 :goto_0

    .line 195
    .end local v2    # "degrees":I
    .end local v13    # "opposite":F
    .end local v15    # "rightSide":Z
    .end local v16    # "radians":D
    .end local v18    # "topSide":Z
    .restart local v3    # "distanceToInnerNumber":I
    .restart local v5    # "distanceToOuterNumber":I
    .restart local v7    # "innerNumberRadius":I
    .restart local v14    # "outerNumberRadius":I
    :cond_3
    const/16 v19, 0x0

    goto :goto_1

    .line 200
    .end local v3    # "distanceToInnerNumber":I
    .end local v5    # "distanceToOuterNumber":I
    .end local v7    # "innerNumberRadius":I
    .end local v14    # "outerNumberRadius":I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mCircleRadius:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mInnerNumbersRadiusMultiplier:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mSelectionRadius:I

    move/from16 v20, v0

    sub-int v12, v19, v20

    .line 202
    .local v12, "minAllowedHypotenuseForInnerNumber":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mCircleRadius:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mOuterNumbersRadiusMultiplier:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mSelectionRadius:I

    move/from16 v20, v0

    add-int v11, v19, v20

    .line 204
    .local v11, "maxAllowedHypotenuseForOuterNumber":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mCircleRadius:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mOuterNumbersRadiusMultiplier:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mInnerNumbersRadiusMultiplier:F

    move/from16 v21, v0

    add-float v20, v20, v21

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v6, v0

    .line 207
    .local v6, "halfwayHypotenusePoint":I
    int-to-double v0, v12

    move-wide/from16 v20, v0

    cmpl-double v19, v8, v20

    if-ltz v19, :cond_5

    int-to-double v0, v6

    move-wide/from16 v20, v0

    cmpg-double v19, v8, v20

    if-gtz v19, :cond_5

    .line 208
    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    aput-object v20, p4, v19

    goto/16 :goto_2

    .line 209
    :cond_5
    int-to-double v0, v11

    move-wide/from16 v20, v0

    cmpg-double v19, v8, v20

    if-gtz v19, :cond_6

    int-to-double v0, v6

    move-wide/from16 v20, v0

    cmpl-double v19, v8, v20

    if-ltz v19, :cond_6

    .line 210
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    aput-object v20, p4, v19

    goto/16 :goto_2

    .line 212
    :cond_6
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 219
    .end local v6    # "halfwayHypotenusePoint":I
    .end local v11    # "maxAllowedHypotenuseForOuterNumber":I
    .end local v12    # "minAllowedHypotenuseForInnerNumber":I
    :cond_7
    if-nez p3, :cond_2

    .line 220
    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mLineLength:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v20, v8, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v4, v0

    .line 223
    .local v4, "distanceToNumber":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mCircleRadius:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mNumbersRadiusMultiplier:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v10, v0

    .line 224
    .local v10, "maxAllowedDistance":I
    if-le v4, v10, :cond_2

    .line 225
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 235
    .end local v4    # "distanceToNumber":I
    .end local v10    # "maxAllowedDistance":I
    .restart local v2    # "degrees":I
    .restart local v13    # "opposite":F
    .restart local v16    # "radians":D
    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 236
    .restart local v15    # "rightSide":Z
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 239
    .restart local v18    # "topSide":Z
    :cond_a
    if-eqz v15, :cond_b

    if-nez v18, :cond_b

    .line 240
    add-int/lit8 v2, v2, 0x5a

    goto/16 :goto_0

    .line 241
    :cond_b
    if-nez v15, :cond_c

    if-nez v18, :cond_c

    .line 242
    rsub-int v2, v2, 0x10e

    goto/16 :goto_0

    .line 243
    :cond_c
    if-nez v15, :cond_0

    if-eqz v18, :cond_0

    .line 244
    add-int/lit16 v2, v2, 0x10e

    goto/16 :goto_0
.end method

.method public getDisappearAnimator()Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 303
    iget-boolean v8, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mIsInitialized:Z

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mDrawValuesReady:Z

    if-nez v8, :cond_1

    .line 304
    :cond_0
    const-string v8, "RadialSelectorView"

    const-string v9, "RadialSelectorView was not ready for animation."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v0, 0x0

    .line 327
    :goto_0
    return-object v0

    .line 309
    :cond_1
    const v6, 0x3e4ccccd    # 0.2f

    .line 310
    .local v6, "midwayPoint":F
    const/16 v1, 0x1f4

    .line 312
    .local v1, "duration":I
    invoke-static {v11, v10}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v3

    .line 313
    .local v3, "kf0":Lcom/nineoldandroids/animation/Keyframe;
    iget v8, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mTransitionMidRadiusMultiplier:F

    invoke-static {v6, v8}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v4

    .line 314
    .local v4, "kf1":Lcom/nineoldandroids/animation/Keyframe;
    iget v8, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mTransitionEndRadiusMultiplier:F

    invoke-static {v10, v8}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v5

    .line 315
    .local v5, "kf2":Lcom/nineoldandroids/animation/Keyframe;
    const-string v8, "animationRadiusMultiplier"

    const/4 v9, 0x3

    new-array v9, v9, [Lcom/nineoldandroids/animation/Keyframe;

    aput-object v3, v9, v12

    aput-object v4, v9, v13

    aput-object v5, v9, v14

    invoke-static {v8, v9}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Lcom/nineoldandroids/animation/Keyframe;)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v7

    .line 318
    .local v7, "radiusDisappear":Lcom/nineoldandroids/animation/PropertyValuesHolder;
    invoke-static {v11, v10}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v3

    .line 319
    invoke-static {v10, v11}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v4

    .line 320
    const-string v8, "alpha"

    new-array v9, v14, [Lcom/nineoldandroids/animation/Keyframe;

    aput-object v3, v9, v12

    aput-object v4, v9, v13

    invoke-static {v8, v9}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Lcom/nineoldandroids/animation/Keyframe;)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v2

    .line 322
    .local v2, "fadeOut":Lcom/nineoldandroids/animation/PropertyValuesHolder;
    sget-boolean v8, Lcom/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v8, :cond_2

    .line 323
    invoke-static {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object v8

    :goto_1
    new-array v9, v14, [Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aput-object v7, v9, v12

    aput-object v2, v9, v13

    .line 322
    invoke-static {v8, v9}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Lcom/nineoldandroids/animation/PropertyValuesHolder;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v8

    int-to-long v10, v1

    .line 323
    invoke-virtual {v8, v10, v11}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 325
    .local v0, "disappearAnimator":Lcom/nineoldandroids/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mInvalidateUpdateListener:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView$InvalidateUpdateListener;

    invoke-virtual {v0, v8}, Lcom/nineoldandroids/animation/ObjectAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .end local v0    # "disappearAnimator":Lcom/nineoldandroids/animation/ObjectAnimator;
    :cond_2
    move-object v8, p0

    .line 323
    goto :goto_1
.end method

.method public getReappearAnimator()Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 22

    .prologue
    .line 331
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mIsInitialized:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mDrawValuesReady:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 332
    :cond_0
    const-string v18, "RadialSelectorView"

    const-string v19, "RadialSelectorView was not ready for animation."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v14, 0x0

    .line 366
    :goto_0
    return-object v14

    .line 337
    :cond_1
    const v12, 0x3e4ccccd    # 0.2f

    .line 338
    .local v12, "midwayPoint":F
    const/16 v6, 0x1f4

    .line 343
    .local v6, "duration":I
    const/high16 v4, 0x3e800000    # 0.25f

    .line 344
    .local v4, "delayMultiplier":F
    const/high16 v17, 0x3f800000    # 1.0f

    .line 345
    .local v17, "transitionDurationMultiplier":F
    add-float v16, v17, v4

    .line 346
    .local v16, "totalDurationMultiplier":F
    int-to-float v0, v6

    move/from16 v18, v0

    mul-float v18, v18, v16

    move/from16 v0, v18

    float-to-int v15, v0

    .line 347
    .local v15, "totalDuration":I
    int-to-float v0, v6

    move/from16 v18, v0

    mul-float v18, v18, v4

    int-to-float v0, v15

    move/from16 v19, v0

    div-float v5, v18, v19

    .line 348
    .local v5, "delayPoint":F
    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, v5

    mul-float v19, v19, v12

    sub-float v12, v18, v19

    .line 350
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mTransitionEndRadiusMultiplier:F

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v8

    .line 351
    .local v8, "kf0":Lcom/nineoldandroids/animation/Keyframe;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mTransitionEndRadiusMultiplier:F

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v5, v0}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v9

    .line 352
    .local v9, "kf1":Lcom/nineoldandroids/animation/Keyframe;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mTransitionMidRadiusMultiplier:F

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v12, v0}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v10

    .line 353
    .local v10, "kf2":Lcom/nineoldandroids/animation/Keyframe;
    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v19}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v11

    .line 354
    .local v11, "kf3":Lcom/nineoldandroids/animation/Keyframe;
    const-string v18, "animationRadiusMultiplier"

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Lcom/nineoldandroids/animation/Keyframe;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v8, v19, v20

    const/16 v20, 0x1

    aput-object v9, v19, v20

    const/16 v20, 0x2

    aput-object v10, v19, v20

    const/16 v20, 0x3

    aput-object v11, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Lcom/nineoldandroids/animation/Keyframe;)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v13

    .line 357
    .local v13, "radiusReappear":Lcom/nineoldandroids/animation/PropertyValuesHolder;
    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v8

    .line 358
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v5, v0}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v9

    .line 359
    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v19}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v10

    .line 360
    const-string v18, "alpha"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Lcom/nineoldandroids/animation/Keyframe;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v8, v19, v20

    const/16 v20, 0x1

    aput-object v9, v19, v20

    const/16 v20, 0x2

    aput-object v10, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Lcom/nineoldandroids/animation/Keyframe;)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v7

    .line 362
    .local v7, "fadeIn":Lcom/nineoldandroids/animation/PropertyValuesHolder;
    sget-boolean v18, Lcom/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v18, :cond_2

    .line 363
    invoke-static/range {p0 .. p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object v18

    :goto_1
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v13, v19, v20

    const/16 v20, 0x1

    aput-object v7, v19, v20

    .line 362
    invoke-static/range {v18 .. v19}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Lcom/nineoldandroids/animation/PropertyValuesHolder;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v18

    int-to-long v0, v15

    move-wide/from16 v20, v0

    .line 364
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v14

    .line 365
    .local v14, "reappearAnimator":Lcom/nineoldandroids/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mInvalidateUpdateListener:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView$InvalidateUpdateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/16 :goto_0

    .end local v14    # "reappearAnimator":Lcom/nineoldandroids/animation/ObjectAnimator;
    :cond_2
    move-object/from16 v18, p0

    .line 363
    goto :goto_1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Landroid/content/Context;ZZZIZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "is24HourMode"    # Z
    .param p3, "hasInnerCircle"    # Z
    .param p4, "disappearsOut"    # Z
    .param p5, "selectionDegrees"    # I
    .param p6, "isInnerCircle"    # Z

    .prologue
    const/4 v2, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    .line 96
    iget-boolean v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mIsInitialized:Z

    if-eqz v1, :cond_0

    .line 97
    const-string v1, "RadialSelectorView"

    const-string v2, "This RadialSelectorView may only be initialized once."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 103
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    iput-boolean p2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mIs24HourMode:Z

    .line 107
    if-eqz p2, :cond_2

    .line 108
    sget v1, Lcom/codetroopers/betterpickers/R$string;->circle_radius_multiplier_24HourMode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mCircleRadiusMultiplier:F

    .line 115
    :goto_1
    iput-boolean p3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mHasInnerCircle:Z

    .line 116
    if-eqz p3, :cond_3

    .line 117
    sget v1, Lcom/codetroopers/betterpickers/R$string;->numbers_radius_multiplier_inner:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mInnerNumbersRadiusMultiplier:F

    .line 118
    sget v1, Lcom/codetroopers/betterpickers/R$string;->numbers_radius_multiplier_outer:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mOuterNumbersRadiusMultiplier:F

    .line 122
    :goto_2
    sget v1, Lcom/codetroopers/betterpickers/R$string;->selection_radius_multiplier:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mSelectionRadiusMultiplier:F

    .line 125
    iput v5, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mAnimationRadiusMultiplier:F

    .line 126
    const v4, 0x3d4ccccd    # 0.05f

    if-eqz p4, :cond_4

    move v1, v2

    :goto_3
    int-to-float v1, v1

    mul-float/2addr v1, v4

    add-float/2addr v1, v5

    iput v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mTransitionMidRadiusMultiplier:F

    .line 127
    const v1, 0x3e99999a    # 0.3f

    if-eqz p4, :cond_1

    move v2, v3

    :cond_1
    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v1, v5

    iput v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mTransitionEndRadiusMultiplier:F

    .line 128
    new-instance v1, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView$InvalidateUpdateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView$InvalidateUpdateListener;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView$1;)V

    iput-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mInvalidateUpdateListener:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView$InvalidateUpdateListener;

    .line 130
    const/4 v1, 0x0

    invoke-virtual {p0, p5, p6, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->setSelection(IZZ)V

    .line 131
    iput-boolean v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mIsInitialized:Z

    goto :goto_0

    .line 110
    :cond_2
    sget v1, Lcom/codetroopers/betterpickers/R$string;->circle_radius_multiplier:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mCircleRadiusMultiplier:F

    .line 111
    sget v1, Lcom/codetroopers/betterpickers/R$string;->ampm_circle_radius_multiplier:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mAmPmCircleRadiusMultiplier:F

    goto :goto_1

    .line 120
    :cond_3
    sget v1, Lcom/codetroopers/betterpickers/R$string;->numbers_radius_multiplier_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mNumbersRadiusMultiplier:F

    goto :goto_2

    :cond_4
    move v1, v3

    .line 126
    goto :goto_3
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v11, 0xff

    const/4 v0, 0x1

    .line 251
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->getWidth()I

    move-result v10

    .line 252
    .local v10, "viewWidth":I
    if-eqz v10, :cond_0

    iget-boolean v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mIsInitialized:Z

    if-nez v1, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-boolean v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mDrawValuesReady:Z

    if-nez v1, :cond_3

    .line 257
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mXCenter:I

    .line 258
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mYCenter:I

    .line 259
    iget v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mXCenter:I

    iget v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mYCenter:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mCircleRadiusMultiplier:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mCircleRadius:I

    .line 261
    iget-boolean v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mIs24HourMode:Z

    if-nez v1, :cond_2

    .line 265
    iget v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mCircleRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mAmPmCircleRadiusMultiplier:F

    mul-float/2addr v1, v2

    float-to-int v6, v1

    .line 266
    .local v6, "amPmCircleRadius":I
    iget v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mYCenter:I

    div-int/lit8 v2, v6, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mYCenter:I

    .line 269
    .end local v6    # "amPmCircleRadius":I
    :cond_2
    iget v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mCircleRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mSelectionRadiusMultiplier:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mSelectionRadius:I

    .line 271
    iput-boolean v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mDrawValuesReady:Z

    .line 275
    :cond_3
    iget v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mCircleRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mNumbersRadiusMultiplier:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mAnimationRadiusMultiplier:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mLineLength:I

    .line 276
    iget v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mXCenter:I

    iget v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mLineLength:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mSelectionRadians:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int v8, v1, v2

    .line 277
    .local v8, "pointX":I
    iget v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mYCenter:I

    iget v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mLineLength:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mSelectionRadians:D

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    sub-int v9, v1, v2

    .line 280
    .local v9, "pointY":I
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mSelectionAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 281
    int-to-float v1, v8

    int-to-float v2, v9

    iget v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mSelectionRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 283
    iget-boolean v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mForceDrawDot:Z

    iget v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mSelectionDegrees:I

    rem-int/lit8 v2, v2, 0x1e

    if-eqz v2, :cond_4

    :goto_1
    or-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 285
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 286
    int-to-float v0, v8

    int-to-float v1, v9

    iget v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mSelectionRadius:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x7

    int-to-float v2, v2

    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 297
    :goto_2
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 298
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 299
    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mXCenter:I

    int-to-float v1, v0

    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mYCenter:I

    int-to-float v2, v0

    int-to-float v3, v8

    int-to-float v4, v9

    iget-object v5, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 283
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 290
    :cond_5
    iget v7, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mLineLength:I

    .line 291
    .local v7, "lineLength":I
    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mSelectionRadius:I

    sub-int/2addr v7, v0

    .line 292
    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mXCenter:I

    int-to-double v2, v7

    iget-wide v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mSelectionRadians:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int v8, v0, v1

    .line 293
    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mYCenter:I

    int-to-double v2, v7

    iget-wide v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mSelectionRadians:D

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    sub-int v9, v0, v1

    goto :goto_2
.end method

.method public setAnimationRadiusMultiplier(F)V
    .locals 0
    .param p1, "animationRadiusMultiplier"    # F

    .prologue
    .line 175
    iput p1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mAnimationRadiusMultiplier:F

    .line 176
    return-void
.end method

.method public setSelection(IZZ)V
    .locals 4
    .param p1, "selectionDegrees"    # I
    .param p2, "isInnerCircle"    # Z
    .param p3, "forceDrawDot"    # Z

    .prologue
    .line 150
    iput p1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mSelectionDegrees:I

    .line 151
    int-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mSelectionRadians:D

    .line 152
    iput-boolean p3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mForceDrawDot:Z

    .line 154
    iget-boolean v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mHasInnerCircle:Z

    if-eqz v0, :cond_0

    .line 155
    if-eqz p2, :cond_1

    .line 156
    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mInnerNumbersRadiusMultiplier:F

    iput v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mNumbersRadiusMultiplier:F

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mOuterNumbersRadiusMultiplier:F

    iput v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mNumbersRadiusMultiplier:F

    goto :goto_0
.end method

.method setTheme(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "themeColors"    # Landroid/content/res/TypedArray;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogs_bpRadialPointerColor:I

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/codetroopers/betterpickers/R$color;->bpBlue:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    sget v0, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogs_bpRadialPointerAlpha:I

    const/16 v1, 0x23

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->mSelectionAlpha:I

    .line 138
    return-void
.end method

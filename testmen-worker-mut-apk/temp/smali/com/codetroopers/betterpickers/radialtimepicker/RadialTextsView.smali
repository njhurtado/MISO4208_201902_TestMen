.class public Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;
.super Landroid/view/View;
.source "RadialTextsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView$InvalidateUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RadialTextsView"


# instance fields
.field private mAmPmCircleRadiusMultiplier:F

.field private mAnimationRadiusMultiplier:F

.field private mCircleRadius:F

.field private mCircleRadiusMultiplier:F

.field mDisappearAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

.field private mDrawValuesReady:Z

.field private mHasInnerCircle:Z

.field private mInnerNumbersRadiusMultiplier:F

.field private mInnerTextGridHeights:[F

.field private mInnerTextGridWidths:[F

.field private mInnerTextSize:F

.field private mInnerTextSizeMultiplier:F

.field private mInnerTexts:[Ljava/lang/String;

.field private mInvalidateUpdateListener:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView$InvalidateUpdateListener;

.field private mIs24HourMode:Z

.field private mIsInitialized:Z

.field private mNumbersRadiusMultiplier:F

.field private final mPaint:Landroid/graphics/Paint;

.field mReappearAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

.field private mTextGridHeights:[F

.field private mTextGridValuesDirty:Z

.field private mTextGridWidths:[F

.field private mTextSize:F

.field private mTextSizeMultiplier:F

.field private mTexts:[Ljava/lang/String;

.field private mTransitionEndRadiusMultiplier:F

.field private mTransitionMidRadiusMultiplier:F

.field private mTypefaceLight:Landroid/graphics/Typeface;

.field private mTypefaceRegular:Landroid/graphics/Typeface;

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mIsInitialized:Z

    .line 83
    return-void
.end method

.method private calculateGridSizes(FFFF[F[F)V
    .locals 6
    .param p1, "numbersRadius"    # F
    .param p2, "xCenter"    # F
    .param p3, "yCenter"    # F
    .param p4, "textSize"    # F
    .param p5, "textGridHeights"    # [F
    .param p6, "textGridWidths"    # [F

    .prologue
    .line 234
    move v0, p1

    .line 236
    .local v0, "offset1":F
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, p1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v1, v3, v4

    .line 238
    .local v1, "offset2":F
    const/high16 v3, 0x40000000    # 2.0f

    div-float v2, p1, v3

    .line 239
    .local v2, "offset3":F
    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 241
    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr p3, v3

    .line 243
    const/4 v3, 0x0

    sub-float v4, p3, v0

    aput v4, p5, v3

    .line 244
    const/4 v3, 0x0

    sub-float v4, p2, v0

    aput v4, p6, v3

    .line 245
    const/4 v3, 0x1

    sub-float v4, p3, v1

    aput v4, p5, v3

    .line 246
    const/4 v3, 0x1

    sub-float v4, p2, v1

    aput v4, p6, v3

    .line 247
    const/4 v3, 0x2

    sub-float v4, p3, v2

    aput v4, p5, v3

    .line 248
    const/4 v3, 0x2

    sub-float v4, p2, v2

    aput v4, p6, v3

    .line 249
    const/4 v3, 0x3

    aput p3, p5, v3

    .line 250
    const/4 v3, 0x3

    aput p2, p6, v3

    .line 251
    const/4 v3, 0x4

    add-float v4, p3, v2

    aput v4, p5, v3

    .line 252
    const/4 v3, 0x4

    add-float v4, p2, v2

    aput v4, p6, v3

    .line 253
    const/4 v3, 0x5

    add-float v4, p3, v1

    aput v4, p5, v3

    .line 254
    const/4 v3, 0x5

    add-float v4, p2, v1

    aput v4, p6, v3

    .line 255
    const/4 v3, 0x6

    add-float v4, p3, v0

    aput v4, p5, v3

    .line 256
    const/4 v3, 0x6

    add-float v4, p2, v0

    aput v4, p6, v3

    .line 257
    return-void
.end method

.method private drawTexts(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[F)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "textSize"    # F
    .param p3, "typeface"    # Landroid/graphics/Typeface;
    .param p4, "texts"    # [Ljava/lang/String;
    .param p5, "textGridWidths"    # [F
    .param p6, "textGridHeights"    # [F

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 264
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 265
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 266
    const/4 v0, 0x0

    aget-object v0, p4, v0

    aget v1, p5, v6

    const/4 v2, 0x0

    aget v2, p6, v2

    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 267
    aget-object v0, p4, v4

    aget v1, p5, v7

    aget v2, p6, v4

    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 268
    aget-object v0, p4, v5

    aget v1, p5, v8

    aget v2, p6, v5

    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 269
    aget-object v0, p4, v6

    const/4 v1, 0x6

    aget v1, p5, v1

    aget v2, p6, v6

    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 270
    aget-object v0, p4, v7

    aget v1, p5, v8

    aget v2, p6, v7

    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 271
    aget-object v0, p4, v8

    aget v1, p5, v7

    aget v2, p6, v8

    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 272
    const/4 v0, 0x6

    aget-object v0, p4, v0

    aget v1, p5, v6

    const/4 v2, 0x6

    aget v2, p6, v2

    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 273
    const/4 v0, 0x7

    aget-object v0, p4, v0

    aget v1, p5, v5

    aget v2, p6, v8

    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 274
    const/16 v0, 0x8

    aget-object v0, p4, v0

    aget v1, p5, v4

    aget v2, p6, v7

    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 275
    const/16 v0, 0x9

    aget-object v0, p4, v0

    const/4 v1, 0x0

    aget v1, p5, v1

    aget v2, p6, v6

    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 276
    const/16 v0, 0xa

    aget-object v0, p4, v0

    aget v1, p5, v4

    aget v2, p6, v5

    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 277
    const/16 v0, 0xb

    aget-object v0, p4, v0

    aget v1, p5, v5

    aget v2, p6, v4

    iget-object v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 278
    return-void
.end method

.method private renderAnimations()V
    .locals 20

    .prologue
    .line 285
    const v11, 0x3e4ccccd    # 0.2f

    .line 286
    .local v11, "midwayPoint":F
    const/16 v4, 0x1f4

    .line 289
    .local v4, "duration":I
    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-static/range {v17 .. v18}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v7

    .line 290
    .local v7, "kf0":Lcom/nineoldandroids/animation/Keyframe;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mTransitionMidRadiusMultiplier:F

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v11, v0}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v8

    .line 291
    .local v8, "kf1":Lcom/nineoldandroids/animation/Keyframe;
    const/high16 v17, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mTransitionEndRadiusMultiplier:F

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v9

    .line 292
    .local v9, "kf2":Lcom/nineoldandroids/animation/Keyframe;
    const-string v17, "animationRadiusMultiplier"

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Lcom/nineoldandroids/animation/Keyframe;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v7, v18, v19

    const/16 v19, 0x1

    aput-object v8, v18, v19

    const/16 v19, 0x2

    aput-object v9, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Lcom/nineoldandroids/animation/Keyframe;)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v12

    .line 295
    .local v12, "radiusDisappear":Lcom/nineoldandroids/animation/PropertyValuesHolder;
    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-static/range {v17 .. v18}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v7

    .line 296
    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v8

    .line 297
    const-string v17, "alpha"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lcom/nineoldandroids/animation/Keyframe;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v7, v18, v19

    const/16 v19, 0x1

    aput-object v8, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Lcom/nineoldandroids/animation/Keyframe;)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v6

    .line 299
    .local v6, "fadeOut":Lcom/nineoldandroids/animation/PropertyValuesHolder;
    sget-boolean v17, Lcom/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v17, :cond_0

    .line 300
    invoke-static/range {p0 .. p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object v17

    :goto_0
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v12, v18, v19

    const/16 v19, 0x1

    aput-object v6, v18, v19

    .line 299
    invoke-static/range {v17 .. v18}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Lcom/nineoldandroids/animation/PropertyValuesHolder;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v17

    int-to-long v0, v4

    move-wide/from16 v18, v0

    .line 301
    invoke-virtual/range {v17 .. v19}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mDisappearAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mDisappearAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mInvalidateUpdateListener:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView$InvalidateUpdateListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/nineoldandroids/animation/ObjectAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 305
    const/high16 v2, 0x3e800000    # 0.25f

    .line 306
    .local v2, "delayMultiplier":F
    const/high16 v16, 0x3f800000    # 1.0f

    .line 307
    .local v16, "transitionDurationMultiplier":F
    add-float v15, v16, v2

    .line 308
    .local v15, "totalDurationMultiplier":F
    int-to-float v0, v4

    move/from16 v17, v0

    mul-float v17, v17, v15

    move/from16 v0, v17

    float-to-int v14, v0

    .line 309
    .local v14, "totalDuration":I
    int-to-float v0, v4

    move/from16 v17, v0

    mul-float v17, v17, v2

    int-to-float v0, v14

    move/from16 v18, v0

    div-float v3, v17, v18

    .line 310
    .local v3, "delayPoint":F
    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v3

    mul-float v18, v18, v11

    sub-float v11, v17, v18

    .line 312
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mTransitionEndRadiusMultiplier:F

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v7

    .line 313
    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mTransitionEndRadiusMultiplier:F

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v3, v0}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v8

    .line 314
    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mTransitionMidRadiusMultiplier:F

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v11, v0}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v9

    .line 315
    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-static/range {v17 .. v18}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v10

    .line 316
    .local v10, "kf3":Lcom/nineoldandroids/animation/Keyframe;
    const-string v17, "animationRadiusMultiplier"

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Lcom/nineoldandroids/animation/Keyframe;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v7, v18, v19

    const/16 v19, 0x1

    aput-object v8, v18, v19

    const/16 v19, 0x2

    aput-object v9, v18, v19

    const/16 v19, 0x3

    aput-object v10, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Lcom/nineoldandroids/animation/Keyframe;)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v13

    .line 319
    .local v13, "radiusReappear":Lcom/nineoldandroids/animation/PropertyValuesHolder;
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v7

    .line 320
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v3, v0}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v8

    .line 321
    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-static/range {v17 .. v18}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v9

    .line 322
    const-string v17, "alpha"

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Lcom/nineoldandroids/animation/Keyframe;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v7, v18, v19

    const/16 v19, 0x1

    aput-object v8, v18, v19

    const/16 v19, 0x2

    aput-object v9, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Lcom/nineoldandroids/animation/Keyframe;)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v5

    .line 324
    .local v5, "fadeIn":Lcom/nineoldandroids/animation/PropertyValuesHolder;
    sget-boolean v17, Lcom/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v17, :cond_1

    .line 325
    invoke-static/range {p0 .. p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object v17

    :goto_1
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v13, v18, v19

    const/16 v19, 0x1

    aput-object v5, v18, v19

    .line 324
    invoke-static/range {v17 .. v18}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Lcom/nineoldandroids/animation/PropertyValuesHolder;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v17

    int-to-long v0, v14

    move-wide/from16 v18, v0

    .line 326
    invoke-virtual/range {v17 .. v19}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mReappearAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mReappearAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mInvalidateUpdateListener:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView$InvalidateUpdateListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/nineoldandroids/animation/ObjectAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 328
    return-void

    .end local v2    # "delayMultiplier":F
    .end local v3    # "delayPoint":F
    .end local v5    # "fadeIn":Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .end local v10    # "kf3":Lcom/nineoldandroids/animation/Keyframe;
    .end local v13    # "radiusReappear":Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .end local v14    # "totalDuration":I
    .end local v15    # "totalDurationMultiplier":F
    .end local v16    # "transitionDurationMultiplier":F
    :cond_0
    move-object/from16 v17, p0

    .line 300
    goto/16 :goto_0

    .restart local v2    # "delayMultiplier":F
    .restart local v3    # "delayPoint":F
    .restart local v5    # "fadeIn":Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .restart local v10    # "kf3":Lcom/nineoldandroids/animation/Keyframe;
    .restart local v13    # "radiusReappear":Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .restart local v14    # "totalDuration":I
    .restart local v15    # "totalDurationMultiplier":F
    .restart local v16    # "transitionDurationMultiplier":F
    :cond_1
    move-object/from16 v17, p0

    .line 325
    goto :goto_1
.end method


# virtual methods
.method public getDisappearAnimator()Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 2

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mDrawValuesReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mDisappearAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 332
    :cond_0
    const-string v0, "RadialTextsView"

    const-string v1, "RadialTextView was not ready for animation."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v0, 0x0

    .line 336
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mDisappearAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    goto :goto_0
.end method

.method public getReappearAnimator()Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 2

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mDrawValuesReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mReappearAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 341
    :cond_0
    const-string v0, "RadialTextsView"

    const-string v1, "RadialTextView was not ready for animation."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v0, 0x0

    .line 345
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mReappearAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Landroid/content/res/Resources;[Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 9
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "texts"    # [Ljava/lang/String;
    .param p3, "innerTexts"    # [Ljava/lang/String;
    .param p4, "is24HourMode"    # Z
    .param p5, "disappearsOut"    # Z

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x7

    const/4 v3, 0x1

    .line 87
    iget-boolean v5, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mIsInitialized:Z

    if-eqz v5, :cond_0

    .line 88
    const-string v2, "RadialTextsView"

    const-string v3, "This RadialTextsView may only be initialized once."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v5, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    sget v6, Lcom/codetroopers/betterpickers/R$color;->numbers_text_color:I

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    sget v5, Lcom/codetroopers/betterpickers/R$string;->radial_numbers_typeface:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "typefaceFamily":Ljava/lang/String;
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mTypefaceLight:Landroid/graphics/Typeface;

    .line 96
    sget v5, Lcom/codetroopers/betterpickers/R$string;->sans_serif:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "typefaceFamilyRegular":Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mTypefaceRegular:Landroid/graphics/Typeface;

    .line 98
    iget-object v5, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    iget-object v5, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 101
    iput-object p2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mTexts:[Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mInnerTexts:[Ljava/lang/String;

    .line 103
    iput-boolean p4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mIs24HourMode:Z

    .line 104
    if-eqz p3, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mHasInnerCircle:Z

    .line 107
    if-eqz p4, :cond_3

    .line 108
    sget v2, Lcom/codetroopers/betterpickers/R$string;->circle_radius_multiplier_24HourMode:I

    .line 109
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mCircleRadiusMultiplier:F

    .line 118
    :goto_1
    new-array v2, v7, [F

    iput-object v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mTextGridHeights:[F

    .line 119
    new-array v2, v7, [F

    iput-object v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mTextGridWidths:[F

    .line 120
    iget-boolean v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mHasInnerCircle:Z

    if-eqz v2, :cond_4

    .line 121
    sget v2, Lcom/codetroopers/betterpickers/R$string;->numbers_radius_multiplier_outer:I

    .line 122
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mNumbersRadiusMultiplier:F

    .line 123
    sget v2, Lcom/codetroopers/betterpickers/R$string;->text_size_multiplier_outer:I

    .line 124
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mTextSizeMultiplier:F

    .line 125
    sget v2, Lcom/codetroopers/betterpickers/R$string;->numbers_radius_multiplier_inner:I

    .line 126
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mInnerNumbersRadiusMultiplier:F

    .line 127
    sget v2, Lcom/codetroopers/betterpickers/R$string;->text_size_multiplier_inner:I

    .line 128
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mInnerTextSizeMultiplier:F

    .line 130
    new-array v2, v7, [F

    iput-object v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mInnerTextGridHeights:[F

    .line 131
    new-array v2, v7, [F

    iput-object v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mInnerTextGridWidths:[F

    .line 139
    :goto_2
    iput v8, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mAnimationRadiusMultiplier:F

    .line 140
    const v5, 0x3d4ccccd    # 0.05f

    if-eqz p5, :cond_5

    move v2, v4

    :goto_3
    int-to-float v2, v2

    mul-float/2addr v2, v5

    add-float/2addr v2, v8

    iput v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mTransitionMidRadiusMultiplier:F

    .line 141
    const v2, 0x3e99999a    # 0.3f

    if-eqz p5, :cond_2

    move v4, v3

    :cond_2
    int-to-float v4, v4

    mul-float/2addr v2, v4

    add-float/2addr v2, v8

    iput v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mTransitionEndRadiusMultiplier:F

    .line 142
    new-instance v2, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView$InvalidateUpdateListener;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView$InvalidateUpdateListener;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView$1;)V

    iput-object v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mInvalidateUpdateListener:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView$InvalidateUpdateListener;

    .line 144
    iput-boolean v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mTextGridValuesDirty:Z

    .line 145
    iput-boolean v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mIsInitialized:Z

    goto/16 :goto_0

    .line 111
    :cond_3
    sget v2, Lcom/codetroopers/betterpickers/R$string;->circle_radius_multiplier:I

    .line 112
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mCircleRadiusMultiplier:F

    .line 113
    sget v2, Lcom/codetroopers/betterpickers/R$string;->ampm_circle_radius_multiplier:I

    .line 114
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mAmPmCircleRadiusMultiplier:F

    goto/16 :goto_1

    .line 133
    :cond_4
    sget v2, Lcom/codetroopers/betterpickers/R$string;->numbers_radius_multiplier_normal:I

    .line 134
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mNumbersRadiusMultiplier:F

    .line 135
    sget v2, Lcom/codetroopers/betterpickers/R$string;->text_size_multiplier_normal:I

    .line 136
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mTextSizeMultiplier:F

    goto :goto_2

    :cond_5
    move v2, v3

    .line 140
    goto :goto_3
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x1

    .line 170
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->getWidth()I

    move-result v12

    .line 171
    .local v12, "viewWidth":I
    if-eqz v12, :cond_0

    iget-boolean v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mIsInitialized:Z

    if-nez v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-boolean v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mDrawValuesReady:Z

    if-nez v0, :cond_4

    .line 176
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mXCenter:I

    .line 177
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mYCenter:I

    .line 178
    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mXCenter:I

    iget v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mYCenter:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mCircleRadiusMultiplier:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mCircleRadius:F

    .line 179
    iget-boolean v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mIs24HourMode:Z

    if-nez v0, :cond_2

    .line 183
    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mCircleRadius:F

    iget v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mAmPmCircleRadiusMultiplier:F

    mul-float v11, v0, v2

    .line 184
    .local v11, "amPmCircleRadius":F
    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mYCenter:I

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v11, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mYCenter:I

    .line 187
    .end local v11    # "amPmCircleRadius":F
    :cond_2
    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mCircleRadius:F

    iget v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mTextSizeMultiplier:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mTextSize:F

    .line 188
    iget-boolean v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mHasInnerCircle:Z

    if-eqz v0, :cond_3

    .line 189
    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mCircleRadius:F

    iget v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mInnerTextSizeMultiplier:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mInnerTextSize:F

    .line 193
    :cond_3
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->renderAnimations()V

    .line 195
    iput-boolean v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mTextGridValuesDirty:Z

    .line 196
    iput-boolean v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mDrawValuesReady:Z

    .line 200
    :cond_4
    iget-boolean v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mTextGridValuesDirty:Z

    if-eqz v0, :cond_6

    .line 201
    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mCircleRadius:F

    iget v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mNumbersRadiusMultiplier:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mAnimationRadiusMultiplier:F

    mul-float v1, v0, v2

    .line 205
    .local v1, "numbersRadius":F
    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mXCenter:I

    int-to-float v2, v0

    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mYCenter:I

    int-to-float v3, v0

    iget v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mTextSize:F

    iget-object v5, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mTextGridHeights:[F

    iget-object v6, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mTextGridWidths:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->calculateGridSizes(FFFF[F[F)V

    .line 207
    iget-boolean v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mHasInnerCircle:Z

    if-eqz v0, :cond_5

    .line 209
    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mCircleRadius:F

    iget v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mInnerNumbersRadiusMultiplier:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mAnimationRadiusMultiplier:F

    mul-float v3, v0, v2

    .line 211
    .local v3, "innerNumbersRadius":F
    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mXCenter:I

    int-to-float v4, v0

    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mYCenter:I

    int-to-float v5, v0

    iget v6, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mInnerTextSize:F

    iget-object v7, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mInnerTextGridHeights:[F

    iget-object v8, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mInnerTextGridWidths:[F

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->calculateGridSizes(FFFF[F[F)V

    .line 214
    .end local v3    # "innerNumbersRadius":F
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mTextGridValuesDirty:Z

    .line 218
    .end local v1    # "numbersRadius":F
    :cond_6
    iget v6, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mTextSize:F

    iget-object v7, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mTypefaceLight:Landroid/graphics/Typeface;

    iget-object v8, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mTexts:[Ljava/lang/String;

    iget-object v9, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mTextGridWidths:[F

    iget-object v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mTextGridHeights:[F

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->drawTexts(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[F)V

    .line 219
    iget-boolean v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mHasInnerCircle:Z

    if-eqz v0, :cond_0

    .line 220
    iget v6, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mInnerTextSize:F

    iget-object v7, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mTypefaceRegular:Landroid/graphics/Typeface;

    iget-object v8, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mInnerTexts:[Ljava/lang/String;

    iget-object v9, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mInnerTextGridWidths:[F

    iget-object v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mInnerTextGridHeights:[F

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->drawTexts(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[F)V

    goto/16 :goto_0
.end method

.method public setAnimationRadiusMultiplier(F)V
    .locals 1
    .param p1, "animationRadiusMultiplier"    # F

    .prologue
    .line 164
    iput p1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mAnimationRadiusMultiplier:F

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mTextGridValuesDirty:Z

    .line 166
    return-void
.end method

.method setTheme(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "themeColors"    # Landroid/content/res/TypedArray;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogs_bpRadialTextColor:I

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/codetroopers/betterpickers/R$color;->bpBlue:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    return-void
.end method

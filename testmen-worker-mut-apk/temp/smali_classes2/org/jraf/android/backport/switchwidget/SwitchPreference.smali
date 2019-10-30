.class public Lorg/jraf/android/backport/switchwidget/SwitchPreference;
.super Lorg/jraf/android/backport/switchwidget/TwoStatePreference;


# instance fields
.field private final mListener:Lorg/jraf/android/backport/switchwidget/a;

.field private mSwitchOff:Ljava/lang/CharSequence;

.field private mSwitchOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lorg/jraf/android/backport/switchwidget/R$attr;->asb_switchPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lorg/jraf/android/backport/switchwidget/a;

    invoke-direct {v0, p0, v2}, Lorg/jraf/android/backport/switchwidget/a;-><init>(Lorg/jraf/android/backport/switchwidget/SwitchPreference;B)V

    iput-object v0, p0, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->mListener:Lorg/jraf/android/backport/switchwidget/a;

    sget-object v0, Lorg/jraf/android/backport/switchwidget/R$styleable;->asb_SwitchPreference:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lorg/jraf/android/backport/switchwidget/R$styleable;->asb_SwitchPreference_asb_summaryOn:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    sget v1, Lorg/jraf/android/backport/switchwidget/R$styleable;->asb_SwitchPreference_asb_summaryOff:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    sget v1, Lorg/jraf/android/backport/switchwidget/R$styleable;->asb_SwitchPreference_asb_switchTextOn:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    sget v1, Lorg/jraf/android/backport/switchwidget/R$styleable;->asb_SwitchPreference_asb_switchTextOff:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    sget v1, Lorg/jraf/android/backport/switchwidget/R$styleable;->asb_SwitchPreference_asb_disableDependentsState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->setDisableDependentsState(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$100(Lorg/jraf/android/backport/switchwidget/SwitchPreference;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getIconCompat()Landroid/graphics/drawable/Drawable;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->getIconHoneycomb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIconHoneycomb()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-super {p0}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchTextOff()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSwitchTextOn()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->onBindView(Landroid/view/View;)V

    sget v0, Lorg/jraf/android/backport/switchwidget/R$id;->switchWidget:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v0, v1, Landroid/widget/Checkable;

    if-eqz v0, :cond_1

    instance-of v0, v1, Landroid/support/v7/widget/SwitchCompat;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    move-object v0, v1

    check-cast v0, Landroid/widget/Checkable;

    iget-boolean v2, p0, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->mChecked:Z

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    instance-of v0, v1, Landroid/support/v7/widget/SwitchCompat;

    if-eqz v0, :cond_1

    check-cast v1, Landroid/support/v7/widget/SwitchCompat;

    iget-object v0, p0, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SwitchCompat;->setTextOn(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SwitchCompat;->setTextOff(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->mListener:Lorg/jraf/android/backport/switchwidget/a;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    invoke-virtual {p0, p1}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->syncSummaryView(Landroid/view/View;)V

    sget v0, Lorg/jraf/android/backport/switchwidget/R$id;->icon_frame:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->getIconCompat()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setSwitchTextOff(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSwitchTextOff(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->notifyChanged()V

    return-void
.end method

.method public setSwitchTextOn(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSwitchTextOn(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->notifyChanged()V

    return-void
.end method

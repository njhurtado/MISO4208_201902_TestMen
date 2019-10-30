.class public Lorg/gnucash/android/ui/passcode/KeyboardFragment;
.super Landroid/support/v4/app/Fragment;
.source "KeyboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/ui/passcode/KeyboardFragment$OnPasscodeEnteredListener;
    }
.end annotation


# static fields
.field private static final DELAY:I = 0x1f4


# instance fields
.field private length:I

.field private listener:Lorg/gnucash/android/ui/passcode/KeyboardFragment$OnPasscodeEnteredListener;

.field private pass1:Landroid/widget/TextView;

.field private pass2:Landroid/widget/TextView;

.field private pass3:Landroid/widget/TextView;

.field private pass4:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->length:I

    return-void
.end method

.method static synthetic access$000(Lorg/gnucash/android/ui/passcode/KeyboardFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/passcode/KeyboardFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->add(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)I
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    .prologue
    .line 34
    iget v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->length:I

    return v0
.end method

.method static synthetic access$102(Lorg/gnucash/android/ui/passcode/KeyboardFragment;I)I
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/passcode/KeyboardFragment;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->length:I

    return p1
.end method

.method static synthetic access$110(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)I
    .locals 2
    .param p0, "x0"    # Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    .prologue
    .line 34
    iget v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->length:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->length:I

    return v0
.end method

.method static synthetic access$200(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->pass1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->pass2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->pass3:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->pass4:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)Lorg/gnucash/android/ui/passcode/KeyboardFragment$OnPasscodeEnteredListener;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->listener:Lorg/gnucash/android/ui/passcode/KeyboardFragment$OnPasscodeEnteredListener;

    return-object v0
.end method

.method private add(Ljava/lang/String;)V
    .locals 4
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    .line 159
    iget v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->length:I

    add-int/lit8 v0, v0, 0x1

    packed-switch v0, :pswitch_data_0

    .line 188
    :goto_0
    return-void

    .line 161
    :pswitch_0
    iget-object v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->pass1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->length:I

    goto :goto_0

    .line 165
    :pswitch_1
    iget-object v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->pass2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->length:I

    goto :goto_0

    .line 169
    :pswitch_2
    iget-object v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->pass3:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->length:I

    goto :goto_0

    .line 173
    :pswitch_3
    iget-object v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->pass4:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->length:I

    .line 176
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/gnucash/android/ui/passcode/KeyboardFragment$12;

    invoke-direct {v1, p0}, Lorg/gnucash/android/ui/passcode/KeyboardFragment$12;-><init>(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 151
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/gnucash/android/ui/passcode/KeyboardFragment$OnPasscodeEnteredListener;

    move-object v2, v0

    iput-object v2, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->listener:Lorg/gnucash/android/ui/passcode/KeyboardFragment$OnPasscodeEnteredListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    return-void

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lorg/gnucash/android/ui/passcode/KeyboardFragment$OnPasscodeEnteredListener;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    const v1, 0x7f0b005a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f09017c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->pass1:Landroid/widget/TextView;

    .line 57
    const v1, 0x7f09017d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->pass2:Landroid/widget/TextView;

    .line 58
    const v1, 0x7f09017e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->pass3:Landroid/widget/TextView;

    .line 59
    const v1, 0x7f09017f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->pass4:Landroid/widget/TextView;

    .line 61
    const v1, 0x7f09016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lorg/gnucash/android/ui/passcode/KeyboardFragment$1;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/passcode/KeyboardFragment$1;-><init>(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v1, 0x7f090220

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lorg/gnucash/android/ui/passcode/KeyboardFragment$2;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/passcode/KeyboardFragment$2;-><init>(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v1, 0x7f0901f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lorg/gnucash/android/ui/passcode/KeyboardFragment$3;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/passcode/KeyboardFragment$3;-><init>(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v1, 0x7f0900c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lorg/gnucash/android/ui/passcode/KeyboardFragment$4;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/passcode/KeyboardFragment$4;-><init>(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v1, 0x7f0900c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lorg/gnucash/android/ui/passcode/KeyboardFragment$5;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/passcode/KeyboardFragment$5;-><init>(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v1, 0x7f0901c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lorg/gnucash/android/ui/passcode/KeyboardFragment$6;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/passcode/KeyboardFragment$6;-><init>(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v1, 0x7f0901bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lorg/gnucash/android/ui/passcode/KeyboardFragment$7;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/passcode/KeyboardFragment$7;-><init>(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v1, 0x7f09009f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lorg/gnucash/android/ui/passcode/KeyboardFragment$8;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/passcode/KeyboardFragment$8;-><init>(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v1, 0x7f090162

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lorg/gnucash/android/ui/passcode/KeyboardFragment$9;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/passcode/KeyboardFragment$9;-><init>(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v1, 0x7f090261

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lorg/gnucash/android/ui/passcode/KeyboardFragment$10;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/passcode/KeyboardFragment$10;-><init>(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v1, 0x7f09008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lorg/gnucash/android/ui/passcode/KeyboardFragment$11;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/passcode/KeyboardFragment$11;-><init>(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    return-object v0
.end method

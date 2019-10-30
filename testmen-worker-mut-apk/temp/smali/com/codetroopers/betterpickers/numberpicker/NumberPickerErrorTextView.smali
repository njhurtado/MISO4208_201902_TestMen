.class public Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;
.super Landroid/widget/TextView;
.source "NumberPickerErrorTextView.java"


# static fields
.field private static final LENGTH_SHORT:J = 0xbb8L


# instance fields
.field private fadeInEndHandler:Landroid/os/Handler;

.field private hideRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView$2;

    invoke-direct {v0, p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView$2;-><init>(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;)V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->hideRunnable:Ljava/lang/Runnable;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->fadeInEndHandler:Landroid/os/Handler;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView$2;

    invoke-direct {v0, p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView$2;-><init>(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;)V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->hideRunnable:Ljava/lang/Runnable;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->fadeInEndHandler:Landroid/os/Handler;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView$2;

    invoke-direct {v0, p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView$2;-><init>(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;)V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->hideRunnable:Ljava/lang/Runnable;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->fadeInEndHandler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->hideRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->fadeInEndHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public hide()V
    .locals 3

    .prologue
    .line 61
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->fadeInEndHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->hideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 62
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 63
    .local v0, "fadeOut":Landroid/view/animation/Animation;
    new-instance v1, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView$3;

    invoke-direct {v1, p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView$3;-><init>(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 77
    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 78
    return-void
.end method

.method public hideImmediately()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->fadeInEndHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->hideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 82
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->setVisibility(I)V

    .line 83
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 31
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->fadeInEndHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->hideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 33
    .local v0, "fadeIn":Landroid/view/animation/Animation;
    new-instance v1, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView$1;

    invoke-direct {v1, p0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView$1;-><init>(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 49
    return-void
.end method

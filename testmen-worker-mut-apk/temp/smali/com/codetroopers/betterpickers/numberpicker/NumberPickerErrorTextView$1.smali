.class Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView$1;
.super Ljava/lang/Object;
.source "NumberPickerErrorTextView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;


# direct methods
.method constructor <init>(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView$1;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView$1;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    invoke-static {v0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->access$100(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView$1;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    invoke-static {v1}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->access$000(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView$1;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->setVisibility(I)V

    .line 42
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 46
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 36
    return-void
.end method

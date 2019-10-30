.class Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView$3;
.super Ljava/lang/Object;
.source "NumberPickerErrorTextView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->hide()V
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
    .line 63
    iput-object p1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView$3;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView$3;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->setVisibility(I)V

    .line 71
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 75
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 66
    return-void
.end method

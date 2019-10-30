.class Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView$InvalidateUpdateListener;
.super Ljava/lang/Object;
.source "RadialSelectorView.java"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvalidateUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;


# direct methods
.method private constructor <init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView$InvalidateUpdateListener;->this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;
    .param p2, "x1"    # Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView$1;

    .prologue
    .line 372
    invoke-direct {p0, p1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView$InvalidateUpdateListener;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Lcom/nineoldandroids/animation/ValueAnimator;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView$InvalidateUpdateListener;->this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->invalidate()V

    .line 377
    return-void
.end method

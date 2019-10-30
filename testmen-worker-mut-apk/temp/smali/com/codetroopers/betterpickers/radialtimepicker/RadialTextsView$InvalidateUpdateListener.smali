.class Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView$InvalidateUpdateListener;
.super Ljava/lang/Object;
.source "RadialTextsView.java"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvalidateUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;


# direct methods
.method private constructor <init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView$InvalidateUpdateListener;->this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;
    .param p2, "x1"    # Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView$1;

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView$InvalidateUpdateListener;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Lcom/nineoldandroids/animation/ValueAnimator;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView$InvalidateUpdateListener;->this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->invalidate()V

    .line 353
    return-void
.end method

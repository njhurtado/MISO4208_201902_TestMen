.class Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout$1;
.super Ljava/lang/Object;
.source "RadialPickerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;


# direct methods
.method constructor <init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    .prologue
    .line 587
    iput-object p1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout$1;->this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout$1;->this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-static {v0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->access$100(Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;)Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;

    move-result-object v0

    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout$1;->this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-static {v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->access$000(Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;->setAmOrPmPressed(I)V

    .line 591
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout$1;->this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-static {v0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->access$100(Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;)Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;->invalidate()V

    .line 592
    return-void
.end method

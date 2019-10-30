.class Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$KeyboardListener;
.super Ljava/lang/Object;
.source "RadialTimePickerDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyboardListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;


# direct methods
.method private constructor <init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;)V
    .locals 0

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$KeyboardListener;->this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;
    .param p2, "x1"    # Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$1;

    .prologue
    .line 1168
    invoke-direct {p0, p1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$KeyboardListener;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1172
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$KeyboardListener;->this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;

    invoke-static {v1, p2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->access$700(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

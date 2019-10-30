.class Lcom/codetroopers/betterpickers/TouchExplorationHelper$1;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "TouchExplorationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codetroopers/betterpickers/TouchExplorationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codetroopers/betterpickers/TouchExplorationHelper;


# direct methods
.method constructor <init>(Lcom/codetroopers/betterpickers/TouchExplorationHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/codetroopers/betterpickers/TouchExplorationHelper;

    .prologue
    .line 353
    .local p0, "this":Lcom/codetroopers/betterpickers/TouchExplorationHelper$1;, "Lcom/codetroopers/betterpickers/TouchExplorationHelper$1;"
    iput-object p1, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper$1;->this$0:Lcom/codetroopers/betterpickers/TouchExplorationHelper;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 1
    .param p1, "host"    # Landroid/view/View;

    .prologue
    .line 368
    .local p0, "this":Lcom/codetroopers/betterpickers/TouchExplorationHelper$1;, "Lcom/codetroopers/betterpickers/TouchExplorationHelper$1;"
    iget-object v0, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper$1;->this$0:Lcom/codetroopers/betterpickers/TouchExplorationHelper;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 356
    .local p0, "this":Lcom/codetroopers/betterpickers/TouchExplorationHelper$1;, "Lcom/codetroopers/betterpickers/TouchExplorationHelper$1;"
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 357
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 358
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 362
    .local p0, "this":Lcom/codetroopers/betterpickers/TouchExplorationHelper$1;, "Lcom/codetroopers/betterpickers/TouchExplorationHelper$1;"
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 363
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 364
    return-void
.end method

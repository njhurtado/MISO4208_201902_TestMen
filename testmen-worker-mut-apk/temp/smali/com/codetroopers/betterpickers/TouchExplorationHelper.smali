.class public abstract Lcom/codetroopers/betterpickers/TouchExplorationHelper;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
.source "TouchExplorationHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;"
    }
.end annotation


# static fields
.field public static final INVALID_ID:I = -0x80000000


# instance fields
.field private mCurrentItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

.field private mFocusedItemId:I

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mParentView:Landroid/view/View;

.field private final mTempGlobalRect:[I

.field private final mTempParentRect:Landroid/graphics/Rect;

.field private final mTempScreenRect:Landroid/graphics/Rect;

.field private final mTempVisibleRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentView"    # Landroid/view/View;

    .prologue
    .line 60
    .local p0, "this":Lcom/codetroopers/betterpickers/TouchExplorationHelper;, "Lcom/codetroopers/betterpickers/TouchExplorationHelper<TT;>;"
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;-><init>()V

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mTempScreenRect:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mTempParentRect:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mTempGlobalRect:[I

    .line 52
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mFocusedItemId:I

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mCurrentItem:Ljava/lang/Object;

    .line 353
    new-instance v0, Lcom/codetroopers/betterpickers/TouchExplorationHelper$1;

    invoke-direct {v0, p0}, Lcom/codetroopers/betterpickers/TouchExplorationHelper$1;-><init>(Lcom/codetroopers/betterpickers/TouchExplorationHelper;)V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    .line 61
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 62
    iput-object p2, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mParentView:Landroid/view/View;

    .line 63
    return-void
.end method

.method private getEventForItem(Ljava/lang/Object;I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 5
    .param p2, "eventType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Landroid/view/accessibility/AccessibilityEvent;"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "this":Lcom/codetroopers/betterpickers/TouchExplorationHelper;, "Lcom/codetroopers/betterpickers/TouchExplorationHelper<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 223
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    new-instance v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    .line 224
    .local v1, "record":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    invoke-virtual {p0, p1}, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->getIdForItem(Ljava/lang/Object;)I

    move-result v2

    .line 227
    .local v2, "virtualDescendantId":I
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 230
    invoke-virtual {p0, p1, v0}, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->populateEventForItem(Ljava/lang/Object;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 232
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "You must add text or a content description in populateEventForItem()"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 238
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v3, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v3, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/View;I)V

    .line 242
    return-object v0
.end method

.method private getNodeForParent()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 6

    .prologue
    .line 246
    .local p0, "this":Lcom/codetroopers/betterpickers/TouchExplorationHelper;, "Lcom/codetroopers/betterpickers/TouchExplorationHelper<TT;>;"
    iget-object v4, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mParentView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 247
    .local v0, "info":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    iget-object v4, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mParentView:Landroid/view/View;

    invoke-static {v4, v0}, Landroid/support/v4/view/ViewCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 249
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 250
    .local v2, "items":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TT;>;"
    invoke-virtual {p0, v2}, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->getVisibleItems(Ljava/util/List;)V

    .line 252
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 253
    .local v1, "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v1}, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->getIdForItem(Ljava/lang/Object;)I

    move-result v3

    .line 254
    .local v3, "virtualDescendantId":I
    iget-object v5, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v5, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;I)V

    goto :goto_0

    .line 257
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    .end local v3    # "virtualDescendantId":I
    :cond_0
    return-object v0
.end method

.method private intersectVisibleToUser(Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "localRect"    # Landroid/graphics/Rect;

    .prologue
    .local p0, "this":Lcom/codetroopers/betterpickers/TouchExplorationHelper;, "Lcom/codetroopers/betterpickers/TouchExplorationHelper<TT;>;"
    const/4 v2, 0x0

    .line 318
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 346
    :cond_0
    :goto_0
    return v2

    .line 323
    :cond_1
    iget-object v3, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWindowVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 329
    move-object v0, p0

    .line 330
    :goto_1
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v1, v0

    .line 331
    check-cast v1, Landroid/view/View;

    .line 334
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-lez v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 337
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 338
    .local v0, "current":Landroid/view/ViewParent;
    goto :goto_1

    .line 341
    .end local v0    # "current":Landroid/view/ViewParent;
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mParentView:Landroid/view/View;

    iget-object v4, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 346
    iget-object v2, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    goto :goto_0
.end method

.method private populateNodeForItemInternal(Ljava/lang/Object;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 6
    .param p2, "node"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ")",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/codetroopers/betterpickers/TouchExplorationHelper;, "Lcom/codetroopers/betterpickers/TouchExplorationHelper<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x1

    .line 262
    invoke-virtual {p0, p1}, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->getIdForItem(Ljava/lang/Object;)I

    move-result v2

    .line 265
    .local v2, "virtualDescendantId":I
    invoke-virtual {p2, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 268
    invoke-virtual {p0, p1, p2}, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->populateNodeForItem(Ljava/lang/Object;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 270
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 271
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "You must add text or a content description in populateNodeForItem()"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 276
    :cond_0
    iget-object v3, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    .line 277
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v3, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mParentView:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V

    .line 279
    iget-object v3, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mParentView:Landroid/view/View;

    invoke-virtual {p2, v3, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;I)V

    .line 281
    iget v3, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mFocusedItemId:I

    if-ne v3, v2, :cond_1

    .line 282
    const/16 v3, 0x80

    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 287
    :goto_0
    iget-object v3, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 288
    iget-object v3, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 289
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "You must set parent bounds in populateNodeForItem()"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 284
    :cond_1
    const/16 v3, 0x40

    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_0

    .line 293
    :cond_2
    iget-object v3, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3}, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->intersectVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 294
    invoke-virtual {p2, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    .line 295
    iget-object v3, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 299
    :cond_3
    iget-object v3, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mParentView:Landroid/view/View;

    iget-object v4, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mTempGlobalRect:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 300
    iget-object v3, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mTempGlobalRect:[I

    const/4 v4, 0x0

    aget v0, v3, v4

    .line 301
    .local v0, "offsetX":I
    iget-object v3, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mTempGlobalRect:[I

    aget v1, v3, v5

    .line 302
    .local v1, "offsetY":I
    iget-object v3, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 303
    iget-object v3, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 304
    iget-object v3, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 306
    return-object p2
.end method

.method private setCurrentItem(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lcom/codetroopers/betterpickers/TouchExplorationHelper;, "Lcom/codetroopers/betterpickers/TouchExplorationHelper<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mCurrentItem:Ljava/lang/Object;

    if-ne v0, p1, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mCurrentItem:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mCurrentItem:Ljava/lang/Object;

    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->sendEventForItem(Ljava/lang/Object;I)Z

    .line 214
    :cond_2
    iput-object p1, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mCurrentItem:Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mCurrentItem:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mCurrentItem:Ljava/lang/Object;

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->sendEventForItem(Ljava/lang/Object;I)Z

    goto :goto_0
.end method


# virtual methods
.method public clearFocusedItem()V
    .locals 3

    .prologue
    .line 76
    .local p0, "this":Lcom/codetroopers/betterpickers/TouchExplorationHelper;, "Lcom/codetroopers/betterpickers/TouchExplorationHelper<TT;>;"
    iget v0, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mFocusedItemId:I

    .line 77
    .local v0, "itemId":I
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public createAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 3
    .param p1, "virtualViewId"    # I

    .prologue
    .line 135
    .local p0, "this":Lcom/codetroopers/betterpickers/TouchExplorationHelper;, "Lcom/codetroopers/betterpickers/TouchExplorationHelper<TT;>;"
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->getNodeForParent()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    .line 146
    :goto_0
    return-object v1

    .line 139
    :cond_0
    invoke-virtual {p0, p1}, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->getItemForId(I)Ljava/lang/Object;

    move-result-object v0

    .line 140
    .local v0, "item":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_1

    .line 141
    const/4 v1, 0x0

    goto :goto_0

    .line 144
    :cond_1
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    .line 145
    .local v1, "node":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-direct {p0, v0, v1}, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->populateNodeForItemInternal(Ljava/lang/Object;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    goto :goto_0
.end method

.method public getAccessibilityDelegate()Landroid/support/v4/view/AccessibilityDelegateCompat;
    .locals 1

    .prologue
    .line 350
    .local p0, "this":Lcom/codetroopers/betterpickers/TouchExplorationHelper;, "Lcom/codetroopers/betterpickers/TouchExplorationHelper<TT;>;"
    iget-object v0, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    return-object v0
.end method

.method public getFocusedItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lcom/codetroopers/betterpickers/TouchExplorationHelper;, "Lcom/codetroopers/betterpickers/TouchExplorationHelper<TT;>;"
    iget v0, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mFocusedItemId:I

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->getItemForId(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getIdForItem(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method protected abstract getItemAt(FF)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)TT;"
        }
    .end annotation
.end method

.method protected abstract getItemForId(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method protected abstract getVisibleItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public invalidateItem(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/codetroopers/betterpickers/TouchExplorationHelper;, "Lcom/codetroopers/betterpickers/TouchExplorationHelper<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/16 v0, 0x800

    invoke-virtual {p0, p1, v0}, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->sendEventForItem(Ljava/lang/Object;I)Z

    .line 112
    return-void
.end method

.method public invalidateParent()V
    .locals 2

    .prologue
    .line 103
    .local p0, "this":Lcom/codetroopers/betterpickers/TouchExplorationHelper;, "Lcom/codetroopers/betterpickers/TouchExplorationHelper<TT;>;"
    iget-object v0, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mParentView:Landroid/view/View;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 104
    return-void
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 151
    .local p0, "this":Lcom/codetroopers/betterpickers/TouchExplorationHelper;, "Lcom/codetroopers/betterpickers/TouchExplorationHelper<TT;>;"
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mParentView:Landroid/view/View;

    invoke-static {v2, p2, p3}, Landroid/support/v4/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    .line 181
    :goto_0
    return v0

    .line 155
    :cond_0
    invoke-virtual {p0, p1}, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->getItemForId(I)Ljava/lang/Object;

    move-result-object v1

    .line 156
    .local v1, "item":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_1

    .line 157
    const/4 v0, 0x0

    goto :goto_0

    .line 160
    :cond_1
    const/4 v0, 0x0

    .line 162
    .local v0, "handled":Z
    sparse-switch p2, :sswitch_data_0

    .line 179
    :cond_2
    :goto_1
    invoke-virtual {p0, v1, p2, p3}, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->performActionForItem(Ljava/lang/Object;ILandroid/os/Bundle;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 181
    goto :goto_0

    .line 164
    :sswitch_0
    iget v2, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mFocusedItemId:I

    if-eq v2, p1, :cond_2

    .line 165
    iput p1, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mFocusedItemId:I

    .line 166
    const v2, 0x8000

    invoke-virtual {p0, v1, v2}, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->sendEventForItem(Ljava/lang/Object;I)Z

    .line 167
    const/4 v0, 0x1

    goto :goto_1

    .line 171
    :sswitch_1
    iget v2, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mFocusedItemId:I

    if-ne v2, p1, :cond_2

    .line 172
    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mFocusedItemId:I

    .line 173
    const/high16 v2, 0x10000

    invoke-virtual {p0, v1, v2}, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->sendEventForItem(Ljava/lang/Object;I)Z

    .line 174
    const/4 v0, 0x1

    goto :goto_1

    .line 162
    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method protected abstract performActionForItem(Ljava/lang/Object;ILandroid/os/Bundle;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation
.end method

.method protected abstract populateEventForItem(Ljava/lang/Object;Landroid/view/accessibility/AccessibilityEvent;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract populateNodeForItem(Ljava/lang/Object;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ")V"
        }
    .end annotation
.end method

.method public sendEventForItem(Ljava/lang/Object;I)Z
    .locals 3
    .param p2, "eventType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lcom/codetroopers/betterpickers/TouchExplorationHelper;, "Lcom/codetroopers/betterpickers/TouchExplorationHelper<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    const/4 v2, 0x0

    .line 130
    :goto_0
    return v2

    .line 127
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->getEventForItem(Ljava/lang/Object;I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 128
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 130
    .local v1, "group":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public setFocusedItem(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/codetroopers/betterpickers/TouchExplorationHelper;, "Lcom/codetroopers/betterpickers/TouchExplorationHelper<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->getIdForItem(Ljava/lang/Object;)I

    move-result v0

    .line 91
    .local v0, "itemId":I
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/codetroopers/betterpickers/TouchExplorationHelper;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

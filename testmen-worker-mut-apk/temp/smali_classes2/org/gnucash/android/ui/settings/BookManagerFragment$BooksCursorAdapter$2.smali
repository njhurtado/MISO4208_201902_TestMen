.class Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2;
.super Ljava/lang/Object;
.source "BookManagerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;->setUpMenu(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;

.field final synthetic val$bookName:Ljava/lang/String;

.field final synthetic val$bookUID:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;

    .prologue
    .line 187
    iput-object p1, p0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2;->this$1:Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;

    iput-object p2, p0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2;->val$bookName:Ljava/lang/String;

    iput-object p4, p0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2;->val$bookUID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 190
    new-instance v2, Landroid/support/v7/widget/PopupMenu;

    iget-object v3, p0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2;->val$context:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 191
    .local v2, "popupMenu":Landroid/support/v7/widget/PopupMenu;
    invoke-virtual {v2}, Landroid/support/v7/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 192
    .local v1, "menuInflater":Landroid/view/MenuInflater;
    const v3, 0x7f0c0002

    invoke-virtual {v2}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 194
    new-instance v3, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2$1;

    invoke-direct {v3, p0}, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2$1;-><init>(Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 211
    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getActiveBookUID()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "activeBookUID":Ljava/lang/String;
    iget-object v3, p0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2;->val$bookUID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    invoke-virtual {v2}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const v4, 0x7f090076

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 215
    :cond_0
    invoke-virtual {v2}, Landroid/support/v7/widget/PopupMenu;->show()V

    .line 216
    return-void
.end method

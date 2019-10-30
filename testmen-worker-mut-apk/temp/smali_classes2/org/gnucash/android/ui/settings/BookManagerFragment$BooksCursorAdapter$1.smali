.class Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$1;
.super Ljava/lang/Object;
.source "BookManagerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;

.field final synthetic val$bookUID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;

    .prologue
    .line 172
    iput-object p1, p0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$1;->this$1:Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;

    iput-object p2, p0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$1;->val$bookUID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 176
    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getActiveBookUID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$1;->val$bookUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$1;->val$bookUID:Ljava/lang/String;

    invoke-static {v0}, Lorg/gnucash/android/util/BookUtils;->loadBook(Ljava/lang/String;)V

    .line 179
    :cond_0
    return-void
.end method

.class Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$4;
.super Ljava/lang/Object;
.source "BookManagerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;->handleMenuRenameBook(Ljava/lang/String;Ljava/lang/String;)Z
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
    .line 237
    iput-object p1, p0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$4;->this$1:Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;

    iput-object p2, p0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$4;->val$bookUID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 240
    check-cast p1, Landroid/support/v7/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    const v1, 0x7f0900ee

    invoke-virtual {p1, v1}, Landroid/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 241
    .local v0, "bookTitle":Landroid/widget/EditText;
    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$4;->val$bookUID:Ljava/lang/String;

    const-string v3, "name"

    .line 244
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 242
    invoke-virtual {v1, v2, v3, v4}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->updateRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v1, p0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$4;->this$1:Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;

    iget-object v1, v1, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;->this$0:Lorg/gnucash/android/ui/settings/BookManagerFragment;

    invoke-virtual {v1}, Lorg/gnucash/android/ui/settings/BookManagerFragment;->refresh()V

    .line 246
    return-void
.end method

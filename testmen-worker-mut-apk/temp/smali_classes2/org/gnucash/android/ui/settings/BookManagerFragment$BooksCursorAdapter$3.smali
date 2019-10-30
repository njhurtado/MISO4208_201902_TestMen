.class Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$3;
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


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;

    .prologue
    .line 248
    iput-object p1, p0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$3;->this$1:Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 251
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 252
    return-void
.end method

.class public Lorg/gnucash/android/db/adapter/BooksDbAdapter$NoActiveBookFoundException;
.super Ljava/lang/RuntimeException;
.source "BooksDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/db/adapter/BooksDbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoActiveBookFoundException"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/db/adapter/BooksDbAdapter;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/db/adapter/BooksDbAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/db/adapter/BooksDbAdapter;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Lorg/gnucash/android/db/adapter/BooksDbAdapter$NoActiveBookFoundException;->this$0:Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    .line 191
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 192
    return-void
.end method

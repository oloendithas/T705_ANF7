.class Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$1;
.super Ljava/lang/Object;
.source "Xt9MyWordsDel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 2
    .param p1, "object1"    # Ljava/lang/CharSequence;
    .param p2, "object2"    # Ljava/lang/CharSequence;

    .prologue
    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 122
    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/CharSequence;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$1;->compare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

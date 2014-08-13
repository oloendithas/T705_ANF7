.class public final enum Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;
.super Ljava/lang/Enum;
.source "OnSelectUnselectListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

.field public static final enum DE_SELECT_ALL:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

.field public static final enum SELECT_ALL:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    const-string v1, "SELECT_ALL"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;->SELECT_ALL:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    new-instance v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    const-string v1, "DE_SELECT_ALL"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;->DE_SELECT_ALL:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    sget-object v1, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;->SELECT_ALL:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;->DE_SELECT_ALL:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;->$VALUES:[Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;->$VALUES:[Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    return-object v0
.end method

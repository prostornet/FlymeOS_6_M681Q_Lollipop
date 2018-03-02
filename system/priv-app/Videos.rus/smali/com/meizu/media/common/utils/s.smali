.class public Lcom/meizu/media/common/utils/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field public static b:Z

.field private static final c:Ljava/lang/reflect/Method;

.field private static final d:[Ljava/lang/String;

.field private static e:F

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static final j:Ljava/text/DecimalFormat;

.field private static final k:Ljava/text/DecimalFormat;

.field private static l:Ljava/text/Collator;

.field private static m:Z

.field private static n:Ljava/lang/String;

.field private static o:I

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    sput-boolean v3, Lcom/meizu/media/common/utils/s;->a:Z

    sput-boolean v4, Lcom/meizu/media/common/utils/s;->b:Z

    invoke-static {}, Lcom/meizu/media/common/utils/s;->h()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/media/common/utils/s;->c:Ljava/lang/reflect/Method;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Lcom/meizu/media/common/utils/s;->d:[Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/meizu/media/common/utils/s;->e:F

    sput-object v2, Lcom/meizu/media/common/utils/s;->i:Ljava/lang/String;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/media/common/utils/s;->j:Ljava/text/DecimalFormat;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/media/common/utils/s;->k:Ljava/text/DecimalFormat;

    sput-object v2, Lcom/meizu/media/common/utils/s;->l:Ljava/text/Collator;

    sput-boolean v3, Lcom/meizu/media/common/utils/s;->m:Z

    sput-object v2, Lcom/meizu/media/common/utils/s;->n:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/meizu/media/common/utils/s;->o:I

    sput-object v2, Lcom/meizu/media/common/utils/s;->p:Ljava/lang/String;

    sput-object v2, Lcom/meizu/media/common/utils/s;->q:Ljava/lang/String;

    sput-object v2, Lcom/meizu/media/common/utils/s;->r:Ljava/lang/String;

    sput-object v2, Lcom/meizu/media/common/utils/s;->s:Ljava/lang/String;

    sput-object v2, Lcom/meizu/media/common/utils/s;->t:Ljava/lang/String;

    sput-object v2, Lcom/meizu/media/common/utils/s;->u:Ljava/lang/String;

    sput-object v2, Lcom/meizu/media/common/utils/s;->v:Ljava/lang/String;

    sput-object v2, Lcom/meizu/media/common/utils/s;->w:Ljava/lang/String;

    return-void
.end method

.method public static a()J
    .locals 4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Lcom/meizu/media/common/utils/s;->b()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v1, Lcom/meizu/media/common/utils/s;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/meizu/media/common/utils/s;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/media/common/utils/s;->f:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/meizu/media/common/utils/s;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "get"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    const-string v4, "unknown"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 3

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Utils"

    const-string v2, "close fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/meizu/media/common/utils/s;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/media/common/utils/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/meizu/media/common/utils/s;->b()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/com.meizu.media.common/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "network.txt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    const-string v2, "\r\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lcom/meizu/media/common/utils/s;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/meizu/media/common/utils/s;->b:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/meizu/media/common/utils/s;->a(Ljava/lang/String;)V

    :cond_1
    const-string v1, "Utils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public static varargs a(ZZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/meizu/media/common/utils/s;->a(Ljava/lang/String;)V

    :cond_2
    if-eqz p0, :cond_0

    const-string v1, "Utils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static b()Ljava/io/File;
    .locals 3

    sget-object v0, Lcom/meizu/media/common/utils/s;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/meizu/media/common/utils/s;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-class v1, Lcom/meizu/media/common/utils/s;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/meizu/media/common/utils/s;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/meizu/media/common/utils/s;->h:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/meizu/media/common/utils/s;->h:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized c()Ljava/lang/String;
    .locals 3

    const-class v1, Lcom/meizu/media/common/utils/s;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/meizu/media/common/utils/s;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Meizu"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ro.serialno"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/meizu/media/common/utils/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/media/common/utils/s;->n:Ljava/lang/String;

    :cond_0
    :goto_0
    sget-object v0, Lcom/meizu/media/common/utils/s;->n:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    sput-object v0, Lcom/meizu/media/common/utils/s;->n:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-class v1, Lcom/meizu/media/common/utils/s;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/meizu/media/common/utils/s;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_1

    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/media/common/utils/s;->g:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/meizu/media/common/utils/s;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized d()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-class v2, Lcom/meizu/media/common/utils/s;

    monitor-enter v2

    :try_start_0
    sget v3, Lcom/meizu/media/common/utils/s;->o:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    const-string v3, "ro.product.locale.language"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/meizu/media/common/utils/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ro.product.locale.region"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/meizu/media/common/utils/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const-string v3, "ro.product.locale"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/meizu/media/common/utils/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fr-CA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    sput v3, Lcom/meizu/media/common/utils/s;->o:I

    :cond_1
    :goto_0
    sget v3, Lcom/meizu/media/common/utils/s;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v0, :cond_3

    :goto_1
    monitor-exit v2

    return v0

    :cond_2
    const/4 v3, 0x0

    :try_start_1
    sput v3, Lcom/meizu/media/common/utils/s;->o:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static e()Z
    .locals 2

    sget-object v0, Lcom/meizu/media/common/utils/s;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "ro.meizu.customize.demo"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Lcom/meizu/media/common/utils/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/media/common/utils/s;->p:Ljava/lang/String;

    :cond_0
    const-string v0, "true"

    sget-object v1, Lcom/meizu/media/common/utils/s;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static f()Z
    .locals 2

    sget-object v0, Lcom/meizu/media/common/utils/s;->r:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "ro.customize.isp"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Lcom/meizu/media/common/utils/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/media/common/utils/s;->r:Ljava/lang/String;

    :cond_0
    const-string v0, "chinamobile"

    sget-object v1, Lcom/meizu/media/common/utils/s;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/meizu/media/common/utils/s;->v:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "ro.product.model"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Lcom/meizu/media/common/utils/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/media/common/utils/s;->v:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/meizu/media/common/utils/s;->v:Ljava/lang/String;

    return-object v0
.end method

.method private static h()Ljava/lang/reflect/Method;
    .locals 3

    :try_start_0
    const-class v0, Landroid/os/Environment;

    const-string v1, "getExternalStorageDirectoryMzInternal"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

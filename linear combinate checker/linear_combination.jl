function read_matrix_from_terminal()
    println("Enter the number of vectors and their dimension (e.g., 'n d'):")
    n_vectors, dim = parse.(Int, split(readline()))

    mat = zeros(Float64, dim, n_vectors)
    
    println("Enter each vector as a column (each with $dim elements):")
    for col in 1:n_vectors
        elements = parse.(Float64, split(readline()))
        if length(elements) != dim
            error("Vector must have $dim elements.")
        end
        mat[:, col] = elements
    end
    
    println("Enter the target vector (space-separated $dim elements):")
    target = parse.(Float64, split(readline()))
    if length(target) != dim
        error("Target vector must have $dim elements.")
    end
    
    augmented_mat = hcat(mat, target)
    return augmented_mat
end


function gaussian_elimination(mat)
    rows, cols = size(mat)  # Matristeki satır ve sütun sayısını alıyoruz

    # İleri eliminasyon: Üçgen matris formunu elde etme
    for i in 1:rows
        pivot = mat[i, i]  # i. satırdaki i. elemanı pivot olarak seçiyoruz
        mat[i, :] /= pivot  # Pivot satırını pivot elemana bölerek pivotu 1 yapıyoruz

        for j in 1:rows
            if j != i
                factor = mat[j, i]  # Pivot sütunundaki diğer elemanları sıfırlamak için faktör belirliyoruz
                mat[j, :] -= factor * mat[i, :]  # Satır çıkarma işlemi yapıyoruz
            end
        end
    end


for row in 1:rows
    if all(iszero, mat[row, 1:cols-1]) && !iszero(mat[row, end])
        println("No solution. The vector is not a linear combination.")
        return
    end
end

    # Çözümleri yazdırma
    for i in 1:rows
        println("c$i = ", round(mat[i, end], digits=2)) # Çözümleri yazdırıyoruz
    end
end


mat =read_matrix_from_terminal()
gaussian_elimination(mat)
